<?php
class App{
    private $controller;
    private $action;
    protected $param;
    function __construct()
    {
        $this->controller = 'Home';
        $this->action = 'index';
        $this->param = [];
        $this->urlprocess();
    }
    public function geturl(){
        if(isset($_GET['url'])){
            $url = explode("/", filter_var(trim($_GET['url'], "/")));
        }else{
            $url=[$this->controller, $this->action];
        }
        return $url;
    }
    public function urlprocess(){
        $url= $this->geturl();
        if(isset($url[0])){
            $this->controller = $url[0];
            if(file_exists("./mvc/controllers/{$this->controller}.php")){
                require_once "./mvc/controllers/{$this->controller}.php";
                $this->controller = new $this->controller;
            }
            unset($url[0]);
        }
        if(isset($url[1])){
            $this->action = $url[1];
            unset($url[1]);
        }
        if(isset($url)){
            $this->param = array_values($url);
        }
        call_user_func_array([$this->controller,$this->action], $this->param);
    }
}
?>