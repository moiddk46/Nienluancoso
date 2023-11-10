<?php
class Home extends Controller{
    public $data = [];

    public function index(){
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/student/home";

        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function contact(){
        $this->data['title'] = "Liên hệ";
        $this->data['layout'] = "main/student/contact";

        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function editinfor()
    {
        if (isset($_POST['updatetk'])) {
            if ($this->model('Sinhvienmodel')->updateinfor($_POST['id'], $_POST['username'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'], $_POST['email']) == true) {
                header("location: http://localhost/Nienluancoso/home/index");
            }
        }
    }
    public function viewinfor()
    {
        $this->data['title'] = "Thông tin tài khoản";
        $this->data['layout'] = "main/student/edittk";
        if (isset($_SESSION['username']) && $_SESSION['phanquyen'] == 2) {
            $this->data['infortk'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
        }
        $this->view("masterlayout/sinhvien", $this->data);
    }
}
