<?php
define('CONTROLLERS_PATH', __DIR__."/controllers");
define('VIEWS_PATH', __DIR__."/Views");
define('BASE_URL', "http://localhost:8181");
define('CONECT',__DIR__."/Conect.php");
$routesMap = [
    'home' => 'HomeController@Home',
    'save' => 'SaveController@Save',
]; 
