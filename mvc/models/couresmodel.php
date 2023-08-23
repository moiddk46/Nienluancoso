<?php
class couresmodel extends connect{
    public function getallcoures(){
        $query = "SELECT khoahoc.*,nhom.nhomtuoi,lop.tenlop,lop.hocphi,chungchi.chungchi from khoahoc,nhom,lop,chungchi WHERE khoahoc.nhom=nhom.id AND khoahoc.chungchi= chungchi.id AND khoahoc.id= lop.khoahoc";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getdetailcoures($id){
        $query = "SELECT khoahoc.*,nhom.nhomtuoi,lop.tenlop,lop.hocphi,chungchi.chungchi from khoahoc,nhom,lop,chungchi WHERE khoahoc.id=? AND khoahoc.nhom=nhom.id AND khoahoc.chungchi= chungchi.id AND khoahoc.id= lop.khoahoc";
        $sth = $this->pdo->prepare($query);
        $sth->execute([$id]);
        return $sth->fetch(PDO::FETCH_ASSOC);
    }
}
?>