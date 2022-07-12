<?php
/**
 * Dump and die
 *
 * @param boolean $flag
 * @param array $arguments
 * @return void
 */
function dd($flag = true, ...$arguments) {

    if (count($arguments)) {
    
    echo "<pre>";
    
    foreach($arguments as $arg) {
    
    var_dump($arg);
    
    }
    
    echo "</pre>";
    
    if ($flag) exit;
    
    }
    
    }
    /**
     * This method building  controller path and returned class name and method
     *
     * @param array $routes
     * @param string $action
     * @return array
     */
 function getRouteHandler(array $routes, $action) {
    if (array_key_exists($action, $routes)) {

        list($controlerClass,$method)=explode('@',$routes[$action]);
        $controllerPath = CONTROLLERS_PATH . "/" . $controlerClass . '.php';
  
        if(!is_readable($controllerPath)) {
            throw new Exception("Undefined Controller {$controllerPath}");
        }

        require_once $controllerPath;

        return [new $controlerClass, $method];
    }
} 
