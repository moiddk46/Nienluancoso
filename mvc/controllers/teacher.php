<?php
class teacher extends Controller{
    public $data = [];
    public function index(){
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/teacher/home_teacher";

        $this->view("masterlayout/teacher", $this->data);
    }
    public function editinfor()
    {
        if (isset($_POST['updatetk'])) {
            if ($this->model('teachermodel')->updateinfor($_POST['id'], $_POST['username'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'], $_POST['email']) == true) {
                header("location: http://localhost/Nienluancoso/teacher/index");
            }
        }
    }
    public function viewinfor()
    {
        $this->data['title'] = "Thông tin tài khoản";
        $this->data['layout'] = "main/teacher/edittk";
        if (isset($_SESSION['username']) && $_SESSION['phanquyen'] == 1) {
            $this->data['infortk'] = $this->model("teachermodel")->getgv($_SESSION['username']);
        }
        $this->view("masterlayout/teacher", $this->data);
    }
}
