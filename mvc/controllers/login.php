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
        if (isset($_POST['submit'])) {
            if (($this->model("loginmodel")->checktk($_POST['username'], $_POST['password']) == 2)&& ($_SESSION['phanquyen']==2)) {
                header("location: http://localhost/Nienluancoso/home/index");
            } else {
                if($_SESSION['phanquyen']==0){
                    header("location: http://localhost/Nienluancoso/admin/index");
                }elseif($_SESSION['phanquyen']==1){
                    header("location: http://localhost/Nienluancoso/teacher/index");
                }
            }
        }
    }
    public function logout()
    {
        if (isset($_SESSION["username"]) && !empty($_SESSION["phanquyen"])) {
            unset($_SESSION["username"]);
            unset($_SESSION['tengv']);
            unset($_SESSION['tenhv']);
            unset($_SESSION["phanquyen"]);
        }
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/student/home";

        $this->view("masterlayout/sinhvien", $this->data);
    }
}
