<?php
class registermodel extends connect
{
    public function checkbeforeinsert($username, $email)
    {
        $query = "SELECT * FROM tkhocvien WHERE USERNAME =?";
        $sth =  $this->pdo->prepare($query);
        $sth->execute([$username]);
        if ($sth->rowCount() == 1) {
            return 1;
        } else {
            $query1 = "SELECT * FROM tkgiaovien WHERE  USERNAME =?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([$username]);
            if ($sth1->rowCount() == 1) {
                return 1;
            } else {
                $query2 = "SELECT * FROM giaovien WHERE  EMAIL=?";
                $sth2 = $this->pdo->prepare($query2);
                $sth2->execute([$email]);
                if ($sth2->rowCount() == 1) {
                    return 2;
                } else {
                    $query3 = "SELECT * FROM hocvien WHERE  EMAIL=?";
                    $sth3 = $this->pdo->prepare($query3);
                    $sth3->execute([$email]);
                    if ($sth3->rowCount() == 1) {
                        return 2;
                    }
                }
            }
        }
        return 0;
    }

    public function addtk($username, $hoten, $ngaysinh, $gioitinh, $quequan, $email, $password, $phanquyen)
    {
        $query = "INSERT INTO `hocvien`(`TENHV`, `NGAYSINH`,`GIOITINH`, `QUEQUAN`, `EMAIL`) VALUES (?,?,?,?,?)";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $hoten,
            $ngaysinh,
            $gioitinh,
            $quequan,
            $email
        ]);
        if ($sth->rowCount() == 1) {
            $query1 = "SELECT * FROM hocvien WHERE email =? AND ngaysinh= ?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $email,
                $ngaysinh
            ]);
            if ($sth1->rowCount() == 1) {
                $hocvien = $sth1->fetch();
                $query2 = "INSERT INTO tkhocvien(`IDHV`,`USERNAME`,`PASSWORD`,`PHANQUYEN`) VALUES (?,?,?,?)";
                $sth2 = $this->pdo->prepare($query2);
                $sth2->execute([
                    $hocvien['IDHV'],
                    $username,
                    $password,
                    $phanquyen
                ]);
                if ($sth2->rowCount() == 1) {
                    return true;
                }
            }
        }
        return false;
    }
}
