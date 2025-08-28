<?php
// Test the login functionality
$loginUrl = "http://127.0.0.1:8000/login";

// Initialize cURL session to get CSRF token
$ch = curl_init($loginUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$response = curl_exec($ch);
curl_close($ch);

// Use regex to extract the CSRF token from the response
preg_match('/name="_token" value="(.*?)"/', $response, $matches);
$csrfToken = $matches[1] ?? '';

// Prepare login credentials
$credentials = [
    'email' => 'admin@hospital.com',
    'password' => 'password',
    '_token' => $csrfToken, // Include CSRF token
];

// Initialize cURL session for login
$ch = curl_init($loginUrl);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $credentials);

// Execute the login request
$response = curl_exec($ch);
curl_close($ch);

// Check if login was successful
if (strpos($response, 'Dashboard') !== false) {
    echo "Login successful!\n";
} else {
    echo "Login failed.\n";
}
?>
