<?php
require_once './db_config.php';

setApiHeaders();

try {
    $pdo = getDatabaseConnection();
} catch (PDOException $e) {
    sendErrorResponse('Database connection failed: ' . $e->getMessage());
}

// Get all drivers and check their password types
$stmt = $pdo->prepare("SELECT id, email, driver_name, password, created_at FROM drivers ORDER BY id");
$stmt->execute();
$drivers = $stmt->fetchAll(PDO::FETCH_ASSOC);

$results = [
    'total_drivers' => count($drivers),
    'hashed_passwords' => 0,
    'plain_text_passwords' => 0,
    'plain_text_accounts' => []
];

foreach ($drivers as $driver) {
    $isHashed = (strpos($driver['password'], '$2y$') === 0);
    
    if ($isHashed) {
        $results['hashed_passwords']++;
    } else {
        $results['plain_text_passwords']++;
        $results['plain_text_accounts'][] = [
            'id' => $driver['id'],
            'email' => $driver['email'],
            'driver_name' => $driver['driver_name'],
            'created_at' => $driver['created_at'],
            'password_starts_with' => substr($driver['password'], 0, 20)
        ];
    }
}

echo json_encode([
    'success' => true,
    'results' => $results
], JSON_PRETTY_PRINT);
?>

