<?php
class Home extends Controller{
    public $data = [];

    public function index(){
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/home";

        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function admin(){
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/home_admin";

        $this->view("masterlayout/admin", $this->data);
    }
    
}
?>