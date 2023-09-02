<?php
class login extends Controller
{
    public $data = [];
    public function index()
    {
        $this->data['title'] = "Đăng nhập";
        $this->data['layout'] = "main/login";
        $this->view("masterlayout/log", $this->data);
    }
    public function check()
    {
        // echo $_POST['username'];
        // echo $_POST['password'];
        // echo $this->model("loginmodel")->checktk($_POST['username'], $_POST['password']);
        // $username = $_POST['username']
        // $this->data['username'] = $username = isset($_POST['username']) ? addslashes($_POST['username']) : '';
        // $this->data['password'] = $password = isset($_POST['password']) ? addslashes($_POST['password']) : '';
        if (isset($_POST['submit'])) {
            if ($this->model("loginmodel")->checktk($_POST['username'], $_POST['password']) == 1) {
                $_SESSION['username'] =  $_POST['username'];
                $this->data['title'] = "Trang chủ";
                $this->data['layout'] = "admin/home";

                $this->view("masterlayout/admin", $this->data);
            } else {
                if ($this->model("loginmodel")->checktk($_POST['username'], $_POST['password']) == 2) {
                    $_SESSION['username'] =  $_POST['username'];
                    $this->data['title'] = "Trang chủ";
                    $this->data['layout'] = "teacher/home";

                    $this->view("masterlayout/teacher", $this->data);
                } else {
                    if ($this->model("loginmodel")->checktk($_POST['username'], $_POST['password']) == 3) {
                        $_SESSION['username'] =  $_POST['username'];
                        $this->data['title'] = "Trang chủ";
                        $this->data['layout'] = "main/home";

                        $this->view("masterlayout/sinhvien", $this->data);
                    } else {
                        $this->data['title'] = "Đăng nhập";
                        $this->data['layout'] = "main/login";
                        $this->data['check'] = 0;
                        $this->view("masterlayout/log", $this->data);
                    }
                }
            }
        } else {
            $this->data['title'] = "Đăng nhập";
            $this->data['layout'] = "main/login";
            $this->data['check'] = 0;
            $this->view("masterlayout/log", $this->data);
        }
    }
    public function logout()
    {
        if (isset($_SESSION["username"])) {
            unset($_SESSION["username"]);
        }
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/home";

        $this->view("masterlayout/sinhvien", $this->data);
    }
}
