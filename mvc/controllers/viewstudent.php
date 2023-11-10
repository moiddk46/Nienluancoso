<?php
class viewstudent extends Controller
{
    public $data = [];

    public function viewallstudent()
    {
        $this->data['title'] = "Học viên";
        $this->data['layout'] = "main/admin/student_admin";
        $this->data['viewstudent'] = $this->model("Sinhvienmodel")->getallsv();
        $this->view("masterlayout/admin", $this->data);
    }

    public function viewstudent($id)
    {
        $this->data['title'] = "Học viên";
        $this->data['layout'] = "main/admin/edit_student";
        $this->data['viewstudent'] = $this->model("Sinhvienmodel")->getsvtheoid($id);
        $this->view("masterlayout/admin", $this->data);
    }

    public function editstudent()
    {
        if (isset($_POST['editstudent'])) {
            if ($this->model("Sinhvienmodel")->update($_POST['idhv'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'], $_POST['email']) == true) {
                if ($this->model("Sinhvienmodel")->updatetk($_POST['idhv'], $_POST['username'], $_POST['password']) == true) {
                    header("location: http://localhost/Nienluancoso/viewstudent/viewallstudent");
                }
            }
        }
    }

    public function deletestudent($id)
    {
        if ($this->model("Sinhvienmodel")->deletedk($id) == true) {
            if ($this->model("Sinhvienmodel")->deletetk($id) == true) {
                if ($this->model("Sinhvienmodel")->delete($id) == true) {
                    header("location: http://localhost/Nienluancoso/viewstudent/viewallstudent");
                }
            }
        }
    }

    public function detailstudent($id)
    {
        $this->data['title'] = "Học viên";
        $this->data['layout'] = "main/admin/view_student";
        $this->data['viewstudent'] = $this->model("Sinhvienmodel")->getsvtheoid($id);
        $this->data['myschedule'] = $this->model("schedulemodel")->getmyschedule($id);
        $this->view("masterlayout/admin", $this->data);
    }

    public function addhv()
    {
        $this->data['title'] = "Học viên";
        $this->data['layout'] = "main/admin/addstudent";
        $this->view("masterlayout/admin", $this->data);
    }
    public function addstudent()
    {
        if (isset($_POST['addstudent'])) {
            if ($this->model("registermodel")->checkbeforeinsert($_POST['username'], $_POST['email']) == 0) {
                if ($this->model("registermodel")->addtk($_POST['username'], $_POST['hoten'], $_POST['ngaysinh'], $_POST['gioitinh'], $_POST['quequan'],  $_POST['email'], $_POST['password'], $_POST['phanquyen']) == true) {
                    header("location: http://localhost/Nienluancoso/viewstudent/viewallstudent");
                }
            } else {
                if ($this->model("registermodel")->checkbeforeinsert($_POST['username'], $_POST['email']) == 1) {
                    $this->data['title'] = "Học viên";
                    $this->data['layout'] = "main/admin/addstudent";
                    $this->data['check'] = 1;
                    $this->view("masterlayout/admin", $this->data);
                } else {
                    $this->data['title'] = "Học viên";
                    $this->data['layout'] = "main/admin/addstudent";
                    $this->data['check'] = 2;
                    $this->view("masterlayout/admin", $this->data);
                }
            }
        }
    }
}
