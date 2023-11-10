<?php

use JetBrains\PhpStorm\Internal\ReturnTypeContract;

class schedulemodel extends connect{
    public function schedulecouresdetail($id){
        $query = "SELECT lop.*,chitietlophoc.*,phong.*,khoahoc.TENKH FROM khoahoc,lop,chitietlophoc, phong WHERE khoahoc.IDKH = ? AND khoahoc.IDKH = lop.IDKH AND lop.IDLOP= chitietlophoc.IDLOP AND chitietlophoc.IDPHONG = phong.IDPHONG ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([$id]);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getdetailcouresschedule($id){
        $query = "SELECT khoahoc.* FROM khoahoc WHERE khoahoc.IDKH =?;";
        $sth=$this->pdo->prepare($query);
        $sth->execute([$id]);
        return $sth->fetch();
    }

    public function getmyschedule($idhv){
        $query = "SELECT DISTINCT khoahoc.TENKH,lop.TENLOP,chitietlophoc.SISOLOP, phong.TENPHONG,trangthaidk.TRANGTHAI FROM khoahoc,trangthaidk,lop,chitietlophoc,phong WHERE trangthaidk.IDHV = ? AND khoahoc.IDKH = lop.IDKH AND trangthaidk.IDLOP = lop.IDLOP AND lop.IDLOP = chitietlophoc.IDLOP AND chitietlophoc.IDPHONG = phong.IDPHONG;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $idhv
        ]);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getmyschedulegv($idgv){
        $query = "SELECT DISTINCT giaovien.TENGV,khoahoc.TENKH,lop.IDLOP,lop.TENLOP,chitietlophoc.SISOLOP, phong.TENPHONG FROM khoahoc,lop,chitietlophoc,phong,giaovien WHERE khoahoc.IDKH = lop.IDKH AND lop.IDLOP = chitietlophoc.IDLOP AND chitietlophoc.IDPHONG = phong.IDPHONG AND lop.IDGV = giaovien.IDGV AND lop.IDGV = ?;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $idgv
        ]);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getdetailcouresscheduleteacher($id){
        $query = "SELECT hocvien.*,trangthaidk.TRANGTHAI FROM hocvien,trangthaidk WHERE hocvien.IDHV = trangthaidk.IDHV AND trangthaidk.IDLOP = ?";
        $sth=$this->pdo->prepare($query);
        $sth->execute([
            $id,
    ]);
        return $sth->fetchAll();
    }
}
?>