<?php
class teachermodel extends connect
{
    public function getallgv()
    {
        $query = "SELECT giaovien.*, tkgiaovien.USERNAME, tkgiaovien.PASSWORD FROM giaovien,tkgiaovien WHERE giaovien.IDGV = tkgiaovien.IDGV";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);

        // return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function updateinfor($idgv,$username, $hoten, $ngaysinh, $gioitinh, $quequan, $email)
    {
        $query = "UPDATE giaovien SET TENGV =?,NGAYSINH=?,GIOITINH = ?,QUEQUAN = ?, EMAIL =? WHERE IDGV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $hoten,
            $ngaysinh,
            $gioitinh,
            $quequan,
            $email,
            $idgv
        ]);
        $query1 = "UPDATE tkgiaovien SET USERNAME =? WHERE IDGV =?;";
        $sth1 = $this->pdo->prepare($query1);
        $sth1->execute([
            $username,
            $idgv
        ]);
        return true;
    }
    public function getgv($username){
        $query = "SELECT giaovien.*,tkgiaovien.USERNAME, tkgiaovien.PASSWORD FROM giaovien,tkgiaovien WHERE tkgiaovien.USERNAME = ? AND giaovien.IDGV = tkgiaovien.IDGV";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $username
        ]);
        return $sth->fetch();
    }
    public function getgvtheoid($id)
    {
        $query = "SELECT giaovien.*,tkgiaovien.USERNAME,tkgiaovien.PASSWORD,tkgiaovien.PHANQUYEN,bangcap.TENBC,chucvu.TENCV FROM giaovien,tkgiaovien,bangcap,chucvu WHERE giaovien.IDGV=? AND giaovien.IDGV = tkgiaovien.IDGV AND giaovien.IDBC = bangcap.IDBC AND giaovien.IDCV = chucvu.IDCV";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $id
        ]);
        return $sth->fetch();
    }
    public function getbangcap()
    {
        $query = "SELECT * FROM bangcap";
        $sth = $this->pdo->prepare($query);
        $sth->execute([]);
        return $sth->fetchAll();
    }
    public function getchucvu()
    {
        $query = "SELECT * FROM chucvu";
        $sth = $this->pdo->prepare($query);
        $sth->execute([]);
        return $sth->fetchAll();
    }
    public function update($idgv, $hoten, $ngaysinh, $gioitinh, $bangcap, $chucvu, $quequan, $email)
    {
        $query = "UPDATE giaovien SET IDCV=?, IDBC=?, TENGV =?,NGAYSINH=?,GIOITINH = ?,QUEQUAN = ?, EMAIL =? WHERE IDGV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $chucvu,
            $bangcap,
            $hoten,
            $ngaysinh,
            $gioitinh,
            $quequan,
            $email,
            $idgv
        ]);
        return true;
    }
    public function updatetk($idgv, $username, $password, $phanquyen)
    {
        $query = "UPDATE tkgiaovien SET USERNAME =?,`PASSWORD`=?, PHANQUYEN =? WHERE IDGV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $username,
            $password,
            $phanquyen,
            $idgv
        ]);
        return true;
    }

    public function delete($idgv)
    {
        $query = "DELETE FROM giaovien WHERE IDGV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idgv
        ]);
        return true;
    }
    public function updatelop($idgv)
    {
        $query = "UPDATE lop SET IDGV = NULL WHERE IDGV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idgv
        ]);
        return true;
    }
    public function deletetk($idgv)
    {
        $query = "DELETE FROM tkgiaovien WHERE IDGV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idgv
        ]);
        return true;
    }
    public function check($username, $email)
    {
        $query = "SELECT * FROM giaovien WHERE EMAIL =? ";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $email
        ]);
        if ($sth->rowCount() == 1) {
            return 1;
        } else {
            $query1 = "SELECT * FROM tkgiaovien WHERE USERNAME =?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $username
            ]);
            if ($sth1->rowCount() == 1) {
                return 2;
            }
        }
        return 0;
    }
    public function addgv($idcv, $idbc, $hoten, $ngaysinh, $gioitinh, $quequan, $email, $phanquyen, $username, $password)
    {
        $query = "INSERT INTO `giaovien`(`IDCV`, `IDBC`, `TENGV`, `NGAYSINH`, `GIOITINH`, `QUEQUAN`, `EMAIL`) VALUES (?,?,?,?,?,?,?);";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idcv,
            $idbc,
            $hoten,
            $ngaysinh,
            $gioitinh,
            $quequan,
            $email
        ]);
        if ($sth->rowCount() == 1) {
            $query2 = "SELECT * FROM giaovien WHERE EMAIL =?";
            $sth2 = $this->pdo->prepare($query2);
            $sth2->execute([
                $email
            ]);
            if ($sth2->rowCount() == 1) {
                $giaovien = $sth2->fetch();
                $query1 = "INSERT INTO `tkgiaovien`(`IDGV`, `USERNAME`, `PASSWORD`, `PHANQUYEN`) VALUES (?,?,?,?)";
                $sth1 = $this->pdo->prepare($query1);
                $sth1->execute([
                    $giaovien['IDGV'],
                    $username,
                    $password,
                    $phanquyen
                ]);
                if ($sth1->rowCount() == 1) {
                    return true;
                }
            }
        }
        return false;
    }
}
