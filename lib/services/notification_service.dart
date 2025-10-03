import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  static final FlutterLocalNotificationsPlugin _localNotifications = 
      FlutterLocalNotificationsPlugin();
  
  // Notification state
  static bool _isInitialized = false;
  static final List<NotificationData> _notificationHistory = [];

  /// Initialize the notification service
  static Future<void> initialize() async {
    if (_isInitialized) return;
    
    try {
      // Initialize local notifications only
      await _initializeLocalNotifications();
      
      // Request permissions (with error handling)
      try {
        await _requestPermissions();
      } catch (e) {
        print('⚠️ Permission request failed: $e');
        // Continue without permissions
      }
      
      _isInitialized = true;
      print('✅ NotificationService initialized successfully');
    } catch (e) {
      print('❌ Error initializing NotificationService: $e');
      // Set as initialized even if failed to prevent retry loops
      _isInitialized = true;
    }
  }

  /// Initialize local notifications
  static Future<void> _initializeLocalNotifications() async {
    const AndroidInitializationSettings androidSettings = 
        AndroidInitializationSettings('@mipmap/ic_launcher');
    
    const DarwinInitializationSettings iosSettings = 
        DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
        );
    
    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );
    
    await _localNotifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTap,
    );

    // Create notification channel for Android (required for Android 8.0+)
    await _createNotificationChannel();
  }

  /// Create notification channel for Android
  static Future<void> _createNotificationChannel() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'driver_app_channel',
      'Driver App Notifications',
      description: 'Notifications for accident reports, trips, earnings, and withdrawals',
      importance: Importance.max,
      playSound: true,
      enableVibration: true,
      showBadge: true,
      enableLights: true,
      ledColor: Color(0xFF2196F3), // Blue LED color
    );

    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        _localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

    if (androidImplementation != null) {
      await androidImplementation.createNotificationChannel(channel);
      print('✅ Android notification channel created successfully');
    }
  }

  /// Request permissions
  static Future<void> _requestPermissions() async {
    // Request local notification permissions
    final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
        _localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    
    if (androidImplementation != null) {
      // Request notification permission for Android 13+
      await androidImplementation.requestNotificationsPermission();
      
      // Request exact alarm permission for Android 12+
      await androidImplementation.requestExactAlarmsPermission();
      
      print('✅ Android notification permissions requested');
    }

    // For iOS, permissions are requested in DarwinInitializationSettings
    print('✅ iOS notification permissions requested');
  }

  /// Handle notification tap
  static void _onNotificationTap(NotificationResponse response) {
    print('Notification tapped: ${response.payload}');
    // Handle notification tap logic here
  }

  /// Show local notification (system notification outside app)
  static Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
    String type = 'general',
  }) async {
    if (!_isInitialized) {
      print('❌ NotificationService not initialized');
      return;
    }

    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'driver_app_channel',
      'Driver App Notifications',
      channelDescription: 'Notifications for the Driver App',
      importance: Importance.max, // Maximum importance for better visibility
      priority: Priority.high,
      showWhen: true,
      enableVibration: true,
      playSound: true,
      autoCancel: false, // Don't auto-cancel so it stays in notification tray
      ongoing: false,
      visibility: NotificationVisibility.public, // Show on lock screen
      fullScreenIntent: true, // Show full screen intent for important notifications
      category: AndroidNotificationCategory.message, // Categorize as message
      channelShowBadge: true, // Show badge on app icon
      icon: '@mipmap/ic_launcher', // Use app icon
      largeIcon: DrawableResourceAndroidBitmap('@mipmap/ic_launcher'), // Large icon
      styleInformation: BigTextStyleInformation(''), // Allow expandable text
      actions: <AndroidNotificationAction>[
        AndroidNotificationAction(
          'view',
          'View',
          showsUserInterface: true,
        ),
        AndroidNotificationAction(
          'dismiss',
          'Dismiss',
          cancelNotification: true,
        ),
      ],
    );

    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      interruptionLevel: InterruptionLevel.critical, // Critical level for better visibility
      sound: 'default', // Use default system sound
      badgeNumber: 1, // Show badge number
      threadIdentifier: 'driver_app_notifications', // Group notifications
      categoryIdentifier: 'driver_app_category', // Category for actions
      attachments: <DarwinNotificationAttachment>[], // No attachments for now
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    try {
      await _localNotifications.show(
        id,
        title,
        body,
        notificationDetails,
        payload: payload,
      );

      print('📱 System notification shown successfully: $title');

      // Add to history
      _notificationHistory.insert(0, NotificationData(
        id: id,
        title: title,
        body: body,
        timestamp: DateTime.now(),
        payload: payload,
        type: type,
      ));

      // Keep only last 50 notifications
      if (_notificationHistory.length > 50) {
        _notificationHistory.removeRange(50, _notificationHistory.length);
      }
    } catch (e) {
      print('❌ Failed to show system notification: $e');
    }
  }

  /// Cancel notification
  static Future<void> cancelNotification(int id) async {
    await _localNotifications.cancel(id);
  }

  /// Cancel all notifications
  static Future<void> cancelAllNotifications() async {
    await _localNotifications.cancelAll();
  }

  /// Get notification history
  static List<NotificationData> getNotificationHistory() {
    return List.from(_notificationHistory);
  }

  /// Clear notification history
  static void clearNotificationHistory() {
    _notificationHistory.clear();
  }

  /// Check if notifications are enabled
  static Future<bool> areNotificationsEnabled() async {
    // For local notifications, we assume they're enabled if initialized
    return _isInitialized;
  }

  // ===== NOTIFICATION METHODS FOR DIFFERENT EVENTS =====

  /// Show notification for new accident reports
  static Future<void> showNewAccidentNotification({
    required int accidentId,
    required String vehicle,
    required String location,
    double? latitude,
    double? longitude,
  }) async {
    final title = "🚨 New Accident Report #$accidentId";
    final message = "Accident reported for vehicle $vehicle at $location";
    
    print('🔔 Creating notification for accident ID: $accidentId');
    
    await showNotification(
      id: accidentId,
      title: title,
      body: message,
      payload: json.encode({
        'type': 'new_accident',
        'accident_id': accidentId,
        'vehicle': vehicle,
        'location': location,
        'latitude': latitude,
        'longitude': longitude,
      }),
      type: 'new_accident',
    );
  }

  /// Show notification for trip completion
  static Future<void> showTripCompletedNotification({
    required int tripId,
    required String vehicle,
    required String location,
    required double earnings,
  }) async {
    final title = "✅ Trip Completed";
    final message = "Trip #$tripId completed for vehicle $vehicle. Earnings: ₹$earnings";
    
    print('🔔 Creating notification for completed trip ID: $tripId');
    
    await showNotification(
      id: tripId,
      title: title,
      body: message,
      payload: json.encode({
        'type': 'trip_completed',
        'trip_id': tripId,
        'vehicle': vehicle,
        'location': location,
        'earnings': earnings,
      }),
      type: 'trip_completed',
    );
  }

  /// Show notification for earnings
  static Future<void> showEarningsNotification({
    required double amount,
    required String period,
    required int tripCount,
  }) async {
    final title = "💰 Earnings Update";
    final message = "₹$amount earned in $period from $tripCount trips";
    
    print('🔔 Creating notification for earnings: ₹$amount');
    
    await showNotification(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000, // Use timestamp as ID
      title: title,
      body: message,
      payload: json.encode({
        'type': 'earnings',
        'amount': amount,
        'period': period,
        'trip_count': tripCount,
      }),
      type: 'earnings',
    );
  }

  /// Show notification for withdrawal
  static Future<void> showWithdrawalNotification({
    required double amount,
    required String status,
    required String method,
  }) async {
    final title = "💳 Withdrawal $status";
    final message = "₹$amount withdrawal via $method is $status";
    
    print('🔔 Creating notification for withdrawal: ₹$amount');
    
    await showNotification(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000, // Use timestamp as ID
      title: title,
      body: message,
      payload: json.encode({
        'type': 'withdrawal',
        'amount': amount,
        'status': status,
        'method': method,
      }),
      type: 'withdrawal',
    );
  }
}

/// Notification data model
class NotificationData {
  final int id;
  final String title;
  final String body;
  final DateTime timestamp;
  final String? payload;
  final String type;

  NotificationData({
    required this.id,
    required this.title,
    required this.body,
    required this.timestamp,
    this.payload,
    this.type = 'general',
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'timestamp': timestamp.toIso8601String(),
      'payload': payload,
      'type': type,
    };
  }

  factory NotificationData.fromJson(Map<String, dynamic> json) {
    return NotificationData(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      timestamp: DateTime.parse(json['timestamp']),
      payload: json['payload'],
      type: json['type'] ?? 'general',
    );
  }
}