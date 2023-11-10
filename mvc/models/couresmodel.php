<?php
class couresmodel extends connect
{
    public function getallcoures()
    {
        $query = "SELECT khoahoc.*,chungchi.*,hocphi.* from khoahoc,chungchi,hocphi WHERE khoahoc.IDCC= chungchi.IDCC AND khoahoc.IDKH= hocphi.IDKH ORDER BY khoahoc.IDKH";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getdetailcoures($id)
    {
        $query = "SELECT khoahoc.*,lop.*,hocphi.*,chungchi.* from khoahoc,lop,hocphi,chungchi WHERE khoahoc.IDKH=? AND khoahoc.IDKH= lop.IDKH AND khoahoc.IDKH = hocphi.IDKH AND khoahoc.IDCC = chungchi.IDCC";
        $sth = $this->pdo->prepare($query);
        $sth->execute([$id]);
        return $sth->fetch(PDO::FETCH_ASSOC);
    }
    public function getdetailcoureforedit($id)
    {
        $query = "SELECT khoahoc.*,hocphi.*,chungchi.* from khoahoc,hocphi,chungchi WHERE khoahoc.IDKH=? AND khoahoc.IDKH = hocphi.IDKH AND khoahoc.IDCC = chungchi.IDCC";
        $sth = $this->pdo->prepare($query);
        $sth->execute([$id]);
        return $sth->fetch(PDO::FETCH_ASSOC);
    }
    public function gethocphi($id)
    {
        $query = "SELECT DISTINCT khoahoc.*,hocphi.HOCPHI from khoahoc,hocphi WHERE khoahoc.IDKH=? AND khoahoc.IDKH = hocphi.IDKH;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $id,
        ]);
        return $sth->fetch();
    }
    public function getchungchi()
    {
        $query = "SELECT chungchi.* from chungchi;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([]);
        return $sth->fetchAll();
    }
    public function updatedetail($idkh, $tenkh, $chitiet, $hocphi, $hinhanh, $chungchi, $ngaybd, $ngaykt)
    {
        $query = "UPDATE KHOAHOC,HOCPHI SET KHOAHOC.TENKH =?,KHOAHOC.CHITIET =?,KHOAHOC.HINHANH =?,KHOAHOC.IDCC = ?, KHOAHOC.NGAYBD=?, KHOAHOC.NGAYKT=?, HOCPHI.HOCPHI = ? WHERE KHOAHOC.IDKH = ? AND HOCPHI.IDKH = ?; ";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $tenkh,
            $chitiet,
            $hinhanh,
            $chungchi,
            $ngaybd,
            $ngaykt,
            $hocphi,
            $idkh,
            $idkh
        ]);
        return true;
    }
    public function updatedetailnoimage($idkh,$tenkh, $chitiet, $hocphi, $chungchi, $ngaybd, $ngaykt)
    {
        $query = "UPDATE KHOAHOC,HOCPHI SET KHOAHOC.TENKH =?, KHOAHOC.CHITIET =?,KHOAHOC.IDCC = ?, KHOAHOC.NGAYBD=?, KHOAHOC.NGAYKT=?, HOCPHI.HOCPHI = ? WHERE KHOAHOC.IDKH = ? AND HOCPHI.IDKH = ?; ";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $tenkh,
            $chitiet,
            $chungchi,
            $ngaybd,
            $ngaykt,
            $hocphi,
            $idkh,
            $idkh
        ]);
        return true;
    }
    public function checkaddcoures($tenkh, $hinhanh, $ngaybd, $ngaykt)
    {
        $today = date("Y/m/d");
        if (strtotime($today) <= strtotime($ngaybd)) {
            if (strtotime($ngaybd) < strtotime($ngaykt)) {
                $query = "SELECT * FROM KHOAHOC WHERE TENKH=? OR HINHANH=?";
                $sth = $this->pdo->prepare($query);
                $sth->execute([
                    $tenkh,
                    $hinhanh
                ]);
                if ($sth->rowCount() == 1) {
                    return 2;
                } else {
                    return 0;
                }
            } else {
                return 1;
            }
        } else {
            return 1;
        }
    }
    public function addcoures($tenkh, $chitiet, $hocphi, $hinhanh, $chungchi, $ngaybd, $ngaykt)
    {
        $query = "INSERT INTO `khoahoc`(`IDCC`, `TENKH`, `HINHANH`, `CHITIET`, `NGAYBD`, `NGAYKT`) VALUES (?,?,?,?,?,?)";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $chungchi,
            $tenkh,
            $hinhanh,
            $chitiet,
            $ngaybd,
            $ngaykt,
        ]);
        if ($sth->rowCount() == 1) {
            $query1 = "SELECT * FROM KHOAHOC WHERE TENKH=?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $tenkh,
            ]);
            if ($sth1->rowCount() == 1) {
                $khoahoc = $sth1->fetch();
                $query2 = "INSERT INTO `hocphi`(`IDKH`, `HOCPHI`) VALUES (?,?)";
                $sth2 = $this->pdo->prepare($query2);
                $sth2->execute([
                    $khoahoc['IDKH'],
                    $hocphi,
                ]);
                if ($sth2->rowCount() == 1) {
                    return true;
                }
            }
        }
    }

    public function deletehocphi($id)
    {
        $query = "DELETE FROM HOCPHI WHERE IDKH = ? ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $id
        ]);
        return true;
    }
    public function deleteclasscoures($id)
    {
        $query = "SELECT * FROM LOP WHERE IDKH = ? ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $id
        ]);
        if ($sth->rowCount() >= 1) {

            $lop = $sth->fetchAll();
            foreach ($lop as $row) {
                $query1 = "DELETE FROM CHITIETLOPHOC WHERE IDLOP =?";
                $sth1 = $this->pdo->prepare($query1);
                $sth1->execute([
                    $row['IDLOP'],
                ]);
            }
        }
        $query2 = "DELETE FROM LOP WHERE IDKH = ? ;";
        $sth2 = $this->pdo->prepare($query2);
        $sth2->execute([
            $id
        ]);
    }

    public function deletecoures($id)
    {
        $query = "DELETE FROM KHOAHOC WHERE IDKH = ? ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $id
        ]);
        return true;
    }

    public function getallclass()
    {
        $query = "SELECT KHOAHOC.*, LOP.*, CHITIETLOPHOC.*, PHONG.* FROM KHOAHOC, LOP,CHITIETLOPHOC,PHONG WHERE KHOAHOC.IDKH=LOP.IDKH AND LOP.IDLOP = CHITIETLOPHOC.IDLOP AND CHITIETLOPHOC.IDPHONG = PHONG.IDPHONG ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([]);
        return $sth->fetchAll();
    }
    public function getallclassdetail($id)
    {
        $query = "SELECT khoahoc.*,lop.*, chitietlophoc.*,phong.*FROM khoahoc,lop,chitietlophoc,phong WHERE lop.IDLOP=? AND khoahoc.IDKH= lop.IDKH AND lop.IDLOP=chitietlophoc.IDLOP AND chitietlophoc.IDPHONG = phong.IDPHONG;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $id
        ]);
        return $sth->fetch();
    }
    public function getallphong()
    {
        $query = "SELECT * FROM PHONG ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([]);
        return $sth->fetchAll();
    }

    public function checkclass($tenlop)
    {
        $query = "SELECT * FROM `lop` WHERE TENLOP = ?";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $tenlop
        ]);
        if ($sth->rowCount() == 1) {
            return false;
        }
        return true;
    }

    public function updateclass($idlop, $idgv, $idkh, $tenlop, $idphong, $siso)
    {
        $query = "UPDATE `lop` SET `IDGV`=?,`IDKH`=?,`TENLOP`=? WHERE IDLOP =?";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idgv,
            $idkh,
            $tenlop,
            $idlop
        ]);
        $query1 = "UPDATE `chitietlophoc` SET `IDPHONG`=?,`SISOLOP`=? WHERE IDLOP =?";
        $sth1 = $this->pdo->prepare($query1);
        $sth1->execute([
            $idphong,
            $siso,
            $idlop
        ]);
        return true;
    }

    public function addclass($idgv, $idkh, $tenlop, $idphong, $siso,)
    {
        $query = "INSERT INTO `LOP`(`IDGV`,`IDKH`,`TENLOP`) VALUES (?,?,?);";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idgv,
            $idkh,
            $tenlop
        ]);
        if ($sth->rowCount() == 1) {
            $query1 = "SELECT * FROM LOP WHERE TENLOP = ?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $tenlop
            ]);
            if ($sth1->rowCount() == 1) {
                $lop = $sth1->fetch();
                $query2 = "INSERT INTO `CHITIETLOPHOC`(`IDLOP`,`IDPHONG`,`SISOLOP`) VALUES (?,?,?);";
                $sth2 = $this->pdo->prepare($query2);
                $sth2->execute([
                    $lop['IDLOP'],
                    $idphong,
                    $siso
                ]);
                if ($sth2->rowCount() == 1) {
                    return true;
                }
            }
        }
    }
    public function deleteclass($id)
    {
        $query1 = "DELETE FROM CHITIETLOPHOC WHERE IDLOP =?";
        $sth1 = $this->pdo->prepare($query1);
        $sth1->execute([
            $id,
        ]);
        if ($sth1->rowCount() == 1) {
            $query2 = "DELETE FROM LOP WHERE IDKH = ? ;";
            $sth2 = $this->pdo->prepare($query2);
            $sth2->execute([
                $id
            ]);
            return true;
        }
    }
}
