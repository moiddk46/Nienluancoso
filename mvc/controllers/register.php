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
            // $username = $_POST['username'];
            // $hoten = $_POST['hoten'];
            // $ngaysinh = $_POST['ngaysinh'];
            // $diachi = $_POST['diachi'];
            // $email = $_POST['email'];
            // $sdt = $_POST['phone'];
            // $password = $_POST['password'];
            if ($this->model("registermodel")->checkbeforeinsert($_POST['username']) == 0) {
                if ($this->model("registermodel")->addtk($_POST['username'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['diachi'],  $_POST['email'], $_POST['phone'], $_POST['password']) == true) {
                    // $this->data['title'] = "Đăng nhập";
                    // $this->data['layout'] = "main/login";
                    header("location: http://localhost/Nienluancoso/login/index");
                    // $this->view("masterlayout/log", $this->data);
                } else {
                    $this->data['title'] = "Đăng ký";
                    $this->data['layout'] = "main/register";
                    $this->data['register'] = 0;

                    $this->view("masterlayout/log", $this->data);
                }
            } else {
                $this->data['title'] = "Đăng ký";
                $this->data['layout'] = "main/register";
                $this->data['register'] = 0;

                $this->view("masterlayout/log", $this->data);
            }
        }
    }
}
