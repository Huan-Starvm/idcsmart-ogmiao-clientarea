<?php
// Set HTTP status code for redirect (302 Found)
header("HTTP/1.1 302 Found");

// Get current domain dynamically
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$domain = $_SERVER['HTTP_HOST'];

// Set the Location header to redirect to the 404 page
header("Location: " . $protocol . $domain . "/404.html");

// Prevent any content from being displayed
exit();
?>
