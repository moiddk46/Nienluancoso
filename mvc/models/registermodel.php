<?php
class registermodel extends connect
{
    public function checkbeforeinsert($username)
    {
        $query = "SELECT * FROM tkhocvien WHERE username =?";
        $sth =  $this->pdo->prepare($query);
        $sth->execute([$username]);


        if ($sth->rowCount() == 1) {
            return 1;
        } else {
            $query1 = "SELECT * FROM tkgiaovien WHERE  username =?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([$username]);
            if ($sth1->rowCount() == 1) {
                return 1;
            }
        }
        return 0;
    }

    public function addtk($username, $hoten, $ngaysinh, $diachi, $email, $sdt, $password)
    {
        $query = "INSERT INTO `hocvien`(`ten`, `ngaysinh`, `diachi`, `email`, `sdt`) VALUES (?,?,?,?,?)";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $hoten,
            $ngaysinh,
            $diachi,
            $email,
            $sdt
        ]);
        if ($sth->rowCount() == 1) {
            $query1 = "SELECT * FROM hocvien WHERE email =? AND sdt = ?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $email,
                $sdt
            ]);
            if ($sth1->rowCount() == 1) {
                $hocvien = $sth1->fetch();
                $query2="INSERT INTO tkhocvien(`idhv`,`username`,`pass`) VALUES (?,?,?)";
                $sth2= $this->pdo->prepare($query2);
                $sth2->execute([
                    $hocvien['id'],
                    $username,
                    $password
                ]);
                if($sth2->rowCount()==1){
                    return true;
                }
            }
        }
        return false;
    }
}
