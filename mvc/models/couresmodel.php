<?php
class couresmodel extends connect{
    public function getallcoures(){
        $query = "SELECT khoahoc.*,nhom.*,lop.*,lop.*,chungchi.* from khoahoc,nhom,lop,chungchi WHERE khoahoc.nhom=nhom.id AND khoahoc.chungchi= chungchi.idchungchi AND khoahoc.idkhoahoc= lop.khoahoc ORDER BY idkhoahoc";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getdetailcoures($id){
        $query = "SELECT khoahoc.*,lop.* from khoahoc,lop WHERE khoahoc.idkhoahoc=? AND khoahoc.idkhoahoc= lop.khoahoc";
        $sth = $this->pdo->prepare($query);
        $sth->execute([$id]);
        return $sth->fetch(PDO::FETCH_ASSOC);
    }
}
?>