<?php
// Test the slots API endpoint
$url = "http://127.0.0.1:8000/reservations/slots/1?date=2024-01-15";
$response = file_get_contents($url);

if ($response === FALSE) {
    echo "Error: Could not connect to the API endpoint\n";
} else {
    echo "API Response:\n";
    echo $response . "\n";
    
    $data = json_decode($response, true);
    if (json_last_error() === JSON_ERROR_NONE) {
        echo "JSON decoded successfully\n";
        print_r($data);
    } else {
        echo "JSON decode error: " . json_last_error_msg() . "\n";
    }
}

// Test the alternatives API endpoint
$url2 = "http://127.0.0.1:8000/reservations/alternatives?specialty_id=1&hospital_id=1";
$response2 = file_get_contents($url2);

if ($response2 === FALSE) {
    echo "Error: Could not connect to the alternatives API endpoint\n";
} else {
    echo "\nAlternatives API Response:\n";
    echo $response2 . "\n";
}
?>
