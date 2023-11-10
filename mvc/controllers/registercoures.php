<?php
class registercoures extends Controller
{
    public $data = [];
    public function registercoures()
    {
        if (isset($_SESSION['username']) && ($_SESSION['phanquyen'] == 2)) {
            $this->data['title'] = "Đăng ký khóa học";
            $this->data['layout'] = "main/student/registercoures";
            $this->data['infortk'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
            $this->data['allcoures'] = $this->model("registercouresmodel")->getallcoures();

            $this->view("masterlayout/log", $this->data);
        } else {
            header("location: http://localhost/Nienluancoso/login/index");
        }
    }
    public function checkregistercoures()
    {
        if (isset($_POST['registercoures'])) {
            if ($this->model("registercouresmodel")->checkregistercoures($_POST['idhv']) == true) {
                if ($this->model("Sinhvienmodel")->update($_POST['idhv'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'], $_POST['email']) == true) {
                    if ($this->model("registercouresmodel")->addstatus($_POST['idhv'], $_POST['lop']) == true) {
                        if ($this->model("registercouresmodel")->submithocphi($_POST['idhv'], $_POST['hocphi']) == true) {
                            header("location: http://localhost/Nienluancoso/home/index");
                        } else {
                            $this->data['title'] = "Đăng ký khóa học";
                            $this->data['layout'] = "main/student/registercoures";
                            $this->data['infortk'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
                            $this->data['allcoures'] = $this->model("registercouresmodel")->getallcoures();
                            $this->data['check'] = 1;
                            $this->view("masterlayout/log", $this->data);
                        }
                    } else {
                        $this->data['title'] = "Đăng ký khóa học";
                        $this->data['layout'] = "main/student/registercoures";
                        $this->data['infortk'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
                        $this->data['allcoures'] = $this->model("registercouresmodel")->getallcoures();
                        $this->data['check'] = 1;
                        $this->view("masterlayout/log", $this->data);
                    }
                } else {
                    $this->data['title'] = "Đăng ký khóa học";
                    $this->data['layout'] = "main/student/registercoures";
                    $this->data['infortk'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
                    $this->data['allcoures'] = $this->model("registercouresmodel")->getallcoures();
                    $this->data['check'] = 1;
                    $this->view("masterlayout/log", $this->data);
                }
            } else {
                $this->data['title'] = "Đăng ký khóa học";
                $this->data['layout'] = "main/student/registercoures";
                $this->data['infortk'] = $this->model("Sinhvienmodel")->getsv($_SESSION['username']);
                $this->data['allcoures'] = $this->model("registercouresmodel")->getallcoures();
                $this->data['check'] = 0;
                $this->view("masterlayout/log", $this->data);
            }
        }
    }
}
