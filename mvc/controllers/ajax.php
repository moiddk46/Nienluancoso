<?php
class ajax extends Controller
{
    public $data = [];
    public function getclass($idkh)
    {
        $data = $this->model("registercouresmodel")->getclass($idkh);
        echo json_encode($data);
    }

    public function gethocphi($idkh)
    {
        $data = $this->model("registercouresmodel")->gethocphi($idkh);
        // $this->view("masterlayout/log", $this->data);
        echo json_encode($data);
    }

    public function thongketheothang($thang)
    {
        $thongke = $this->model("thongkemodel")->thongketheothang($thang);
        echo json_encode($thongke);
    }

    public function thongketheonam($nam)
    {
        $thongke = $this->model("thongkemodel")->thongketheonam($nam);
        echo json_encode($thongke);
    }

    public function viewinfor(){
        $data = $this->model("teachermodel")->getgv($_SESSION['username']);
        echo json_encode($data);
    }
}
