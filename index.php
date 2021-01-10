<?php

// Configuration Section
$_CONFIG = [

    // Application Name
    'name' => 'Adidas',

    // Application Base URL
    'baseurl' => 'http://localhost/adidas',   

    // Index Controller
    'index' => 'Home',

    // Database Configuration
    'database' => [
        'host'  => 'localhost',
        'user'  => 'root',
        'pass'  => '',
        'name'  => 'adidas',
    ],

];

// Boot Core System
include 'system/boot.php';

?>