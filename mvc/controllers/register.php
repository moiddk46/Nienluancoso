<?php
class register extends Controller
{
    public $data = [];
    public function index()
    {
        $this->data['title'] = "Đăng ký";
        $this->data['layout'] = "main/register";

        $this->view("masterlayout/log", $this->data);
    }
    public function checkregister()
    {
        if (isset($_POST['register'])) {
            if ($this->model("registermodel")->checkbeforeinsert($_POST['username'], $_POST['email']) == 0) {
                if ($this->model("registermodel")->addtk($_POST['username'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'],  $_POST['email'], $_POST['password'], $_POST['phanquyen']) == true) {
                    header("location: http://localhost/Nienluancoso/login/index");
                } else {
                    $this->data['title'] = "Đăng ký";
                    $this->data['layout'] = "main/register";
                    $this->data['register'] = 0;

                    $this->view("masterlayout/log", $this->data);
                }
            } else {
                if ($this->model("registermodel")->checkbeforeinsert($_POST['username'], $_POST['email']) == 1) {
                    $this->data['title'] = "Đăng ký";
                    $this->data['layout'] = "main/register";
                    $this->data['register'] = 1;
                    $this->view("masterlayout/log", $this->data);
                } else {
                    $this->data['title'] = "Đăng ký";
                    $this->data['layout'] = "main/register";
                    $this->data['register'] = 2;
                    $this->view("masterlayout/log", $this->data);
                }
            }
        }
    }
}
