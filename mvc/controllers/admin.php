<?php
class admin extends Controller
{
    public $data = [];
    public function index()
    {
        $this->data['title'] = "Trang chủ";
        $this->data['layout'] = "main/admin/home_admin";

        $this->view("masterlayout/admin", $this->data);
    }
    public function editinfor()
    {
        if (isset($_POST['updatetk'])) {
            if ($this->model('teachermodel')->updateinfor($_POST['id'], $_POST['username'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'], $_POST['email']) == true) {
                header("location: http://localhost/Nienluancoso/admin/index");
            }
        }
    }
    public function viewinfor()
    {
        $this->data['title'] = "Thông tin tài khoản";
        $this->data['layout'] = "main/admin/edittk";
        if (isset($_SESSION['username']) && $_SESSION['phanquyen'] == 0) {
            $this->data['infortk'] = $this->model("teachermodel")->getgv($_SESSION['username']);
        }
        $this->view("masterlayout/admin", $this->data);
    }
    public function couresadmin()
    {
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/admin/coures_admin";
        $this->data['coures'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/admin", $this->data);
    }
    public function editcoures($id)
    {
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/admin/edit_coures";
        $this->data['editcoures'] = $this->model("couresmodel")->getdetailcoureforedit($id);
        $this->data['cccoures'] = $this->model("couresmodel")->getchungchi();
        $this->data['hocphicoures'] = $this->model("couresmodel")->gethocphi($id);
        $this->view("masterlayout/admin", $this->data);
    }
    public function submitedit()
    {
        if (isset($_POST['chinhsua'])) {
            if (!empty($_FILES["hinhanh"]["name"])) {
                $target_dir = "./public/img/galarey/";
                $target_file = $target_dir . basename($_FILES["hinhanh"]["name"]);
                $name = $_FILES['hinhanh']['name'];
                if (move_uploaded_file($_FILES["hinhanh"]["tmp_name"], $target_file)) {
                    if ($this->model("couresmodel")->updatedetail($_POST['idkh'], $_POST['tenkh'],$_POST['chitiet'], $_POST['hocphi'], $name, $_POST['chungchi'], $_POST['ngaybatdau'], $_POST['ngayketthuc']) == true) {
                        header("location: http://localhost/Nienluancoso/admin/couresadmin");
                    }
                }
            } else {
                if ($this->model("couresmodel")->updatedetailnoimage($_POST['idkh'],$_POST['tenkh'], $_POST['chitiet'], $_POST['hocphi'], $_POST['chungchi'], $_POST['ngaybatdau'], $_POST['ngayketthuc']) == true) {
                    header("location: http://localhost/Nienluancoso/admin/couresadmin");
                }
            }
        }
    }

    public function viewcoures($id)
    {
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/admin/view_coures_admin";
        $this->data['viewcoures'] = $this->model("couresmodel")->getdetailcoures($id);
        $this->view("masterlayout/admin", $this->data);
    }

    public function addcoures()
    {
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/admin/addcoures";
        $this->data['cccoures'] = $this->model("couresmodel")->getchungchi();
        $this->view("masterlayout/admin", $this->data);
    }
    public function adddetailcoures()
    {
        if (isset($_POST['addcoures'])) {
            $target_dir = "./public/img/galarey/";
            $target_file = $target_dir . basename($_FILES["hinhanh"]["name"]);
            $name = $_FILES['hinhanh']['name'];
            if ($this->model("couresmodel")->checkaddcoures($_POST['tenkh'], $name, $_POST['ngaybatdau'], $_POST['ngayketthuc']) == 0) {
                if (move_uploaded_file($_FILES["hinhanh"]["tmp_name"], $target_file)) {
                    if ($this->model("couresmodel")->addcoures($_POST['tenkh'], $_POST['chitiet'], $_POST['hocphi'], $name, $_POST['chungchi'], $_POST['ngaybatdau'], $_POST['ngayketthuc']) == true) {
                        header("location: http://localhost/Nienluancoso/admin/couresadmin");
                    }
                }
            } else {
                if ($this->model("couresmodel")->checkaddcoures($_POST['tenkh'], $name, $_POST['ngaybatdau'], $_POST['ngayketthuc']) == 1) {
                    $this->data['check'] = 1;
                    $this->data['title'] = "Khóa học";
                    $this->data['layout'] = "main/admin/addcoures";
                    $this->data['cccoures'] = $this->model("couresmodel")->getchungchi();
                    $this->view("masterlayout/admin", $this->data);
                } else {
                    $this->data['check'] = 2;
                    $this->data['title'] = "Khóa học";
                    $this->data['layout'] = "main/admin/addcoures";
                    $this->data['cccoures'] = $this->model("couresmodel")->getchungchi();
                    $this->view("masterlayout/admin", $this->data);
                }
            }
        }
    }
    public function deletecoures($id)
    {
        if ($this->model("couresmodel")->deletehocphi($id) == true) {
            $this->model("couresmodel")->deleteclasscoures($id);
            if ($this->model("couresmodel")->deletecoures($id) == true) {
                header("location: http://localhost/Nienluancoso/admin/couresadmin");
            }
        }
    }

    public function classcoures()
    {
        $this->data['title'] = "Lớp học";
        $this->data['layout'] = "main/admin/classcoures";
        $this->data['classcoures'] = $this->model("couresmodel")->getallclass();
        $this->data['teacher'] = $this->model("teachermodel")->getallgv();
        $this->view("masterlayout/admin", $this->data);
    }
    public function viewedit($id, $idgv)
    {
        $this->data['title'] = "Lớp học";
        $this->data['layout'] = "main/admin/editclass";
        $this->data['editclass'] = $this->model("couresmodel")->getallclassdetail($id);
        $this->data['phong'] = $this->model("couresmodel")->getallphong();
        $this->data['coures'] = $this->model("couresmodel")->getallcoures();
        $this->data['teacher'] = $this->model("teachermodel")->getallgv();
        if ($idgv != 0) {
            $this->data['teacherid'] = $this->model('teachermodel')->getgvtheoid($idgv);
        }
        $this->view("masterlayout/admin", $this->data);
    }
    public function submiteditclass()
    {
        if (isset($_POST['editclass'])) {
            // if ($this->model('couresmodel')->checkupdateclass($_POST['tenlop']) == true) {
            if ($this->model('couresmodel')->updateclass($_POST['idlop'], $_POST['giaovien'], $_POST['khoahoc'], $_POST['tenlop'], $_POST['phonghoc'], $_POST['siso']) == true) {
                header("location: http://localhost/Nienluancoso/admin/classcoures");
            }
            // } else {
            // }
        }
    }
    public function deleteclass($id)
    {
        if ($this->model("couresmodel")->deleteclass($id) == true) {
            header("location: http://localhost/Nienluancoso/admin/classcoures");
        }
    }
    public function viewadd()
    {
        $this->data['title'] = "Lớp học";
        $this->data['layout'] = "main/admin/addclass";
        $this->data['phong'] = $this->model("couresmodel")->getallphong();
        $this->data['coures'] = $this->model("couresmodel")->getallcoures();
        $this->data['teacher'] = $this->model("teachermodel")->getallgv();
        $this->view("masterlayout/admin", $this->data);
    }
    public function submitaddclass()
    {
        if (isset($_POST['addclass'])) {
            if ($this->model('couresmodel')->checkclass($_POST['tenlop']) == true) {
                if ($this->model('couresmodel')->addclass($_POST['giaovien'], $_POST['khoahoc'], $_POST['tenlop'], $_POST['phonghoc'], $_POST['siso']) == true) {
                    header("location: http://localhost/Nienluancoso/admin/classcoures");
                }
            } else {
                $this->data['title'] = "Lớp học";
                $this->data['check'] = 1;
                $this->data['layout'] = "main/admin/addclass";
                $this->data['phong'] = $this->model("couresmodel")->getallphong();
                $this->data['coures'] = $this->model("couresmodel")->getallcoures();
                $this->data['teacher'] = $this->model("teachermodel")->getallgv();
                $this->view("masterlayout/admin", $this->data);
            }
        }
    }
    public function viewclass($id)
    {
    }
}
