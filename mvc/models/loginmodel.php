<?php
class loginmodel extends connect
{
    public function checktk($username, $password)
    {
        $query = "SELECT  hocvien.*,tkhocvien.USERNAME,tkhocvien.PASSWORD,tkhocvien.PHANQUYEN FROM tkhocvien,hocvien WHERE tkhocvien.USERNAME=? AND tkhocvien.PASSWORD =? AND tkhocvien.IDHV = hocvien.IDHV";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $username,
            $password
        ]);
        if ($sth->rowcount() == 1) {
            $hocvien = $sth->fetch();
            $_SESSION['tenhv'] = $hocvien['TENHV'];
            $_SESSION['username'] = $username;
            $_SESSION['phanquyen'] = $hocvien['PHANQUYEN'];
            return 2;
        } else {
            $query1 = "SELECT giaovien.*,tkgiaovien.USERNAME,tkgiaovien.PASSWORD,tkgiaovien.PHANQUYEN FROM tkgiaovien,giaovien WHERE tkgiaovien.USERNAME=? AND tkgiaovien.PASSWORD=? AND tkgiaovien.IDGV = giaovien.IDGV";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $username,
                $password
            ]);
            if ($sth1->rowCount() == 1) {
                $giaovien = $sth1->fetch();
                $_SESSION['tengv'] = $giaovien['TENGV'];
                $_SESSION['username'] = $username;
                $_SESSION['phanquyen'] = $giaovien['PHANQUYEN'];
                return 1;
            }
        }
    }
}
