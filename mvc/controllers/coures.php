<?php
class coures extends Controller {
    public $data = [];
    public function coures(){
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/student/coures";
        $this->data['coures'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function couresdetail($id){
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/student/couresdetail";
        $this->data['couresdetail'] = $this->model("couresmodel")->getdetailcoures($id);
        $this->view("masterlayout/sinhvien", $this->data);
    }
    public function couresteacher(){
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/teacher/coures";
        $this->data['coures'] = $this->model("couresmodel")->getallcoures();
        $this->view("masterlayout/teacher", $this->data);
    }
    public function couresdetailteacher($id){
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/teacher/couresdetail";
        $this->data['couresdetail'] = $this->model("couresmodel")->getdetailcoures($id);
        $this->view("masterlayout/teacher", $this->data);
    }
    public function editcoures($id)
    {
        $this->data['title'] = "Khóa học";
        $this->data['layout'] = "main/teacher/edit_coures";
        $this->data['editcoures'] = $this->model("couresmodel")->getdetailcoureforedit($id);
        $this->data['cccoures'] = $this->model("couresmodel")->getchungchi();
        $this->data['hocphicoures'] = $this->model("couresmodel")->gethocphi($id);
        $this->view("masterlayout/teacher", $this->data);
    }
    public function submitedit()
    {
        if (isset($_POST['chinhsua'])) {
            if (!empty($_FILES["hinhanh"]["name"])) {
                $target_dir = "./public/img/galarey/";
                $target_file = $target_dir . basename($_FILES["hinhanh"]["name"]);
                $name = $_FILES['hinhanh']['name'];
                if (move_uploaded_file($_FILES["hinhanh"]["tmp_name"], $target_file)) {
                    if ($this->model("couresmodel")->updatedetail($_POST['idkh'],$_POST['tenkh'], $_POST['chitiet'], $_POST['hocphi'], $name, $_POST['chungchi'], $_POST['ngaybatdau'], $_POST['ngayketthuc']) == true) {
                        header("location: http://localhost/Nienluancoso/coures/couresteacher");
                    }
                }
            } else {
                if ($this->model("couresmodel")->updatedetailnoimage($_POST['idkh'],$_POST['tenkh'], $_POST['chitiet'], $_POST['hocphi'], $_POST['chungchi'], $_POST['ngaybatdau'], $_POST['ngayketthuc']) == true) {
                    header("location: http://localhost/Nienluancoso/coures/couresteacher");
                }
            }
        }
    }
}
