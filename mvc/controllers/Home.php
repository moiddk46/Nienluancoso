<?php
class Home extends Controller{
    public $data = [];

    public function index(){
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/home";

        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function coures(){
        $this->model("couresmodel");
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/coures";
        $this->data['coures'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function couresdetail($id){
        $this->model("couresmodel");
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/couresdetail";
        $this->data['couresdetail'] = $this->model("couresmodel")->getdetailcoures($id);
        $this->view("masterlayout/sinhvien", $this->data);
    }
}
?>