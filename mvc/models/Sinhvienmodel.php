<?php
class Sinhvienmodel extends connect{
    public function getallsv(){
        $query = "SELECT hocvien.*, tkhocvien.USERNAME, tkhocvien.PASSWORD FROM hocvien,tkhocvien WHERE hocvien.IDHV = tkhocvien.IDHV";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
        
        // return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function getsv($username){
        $query = "SELECT hocvien.*,tkhocvien.USERNAME,tkhocvien.PASSWORD FROM hocvien,tkhocvien WHERE tkhocvien.USERNAME = ? AND hocvien.IDHV = tkhocvien.IDHV";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $username
        ]);
        return $sth->fetch();
    }

    public function updateinfor($id,$username, $hoten, $ngaysinh, $gioitinh, $quequan, $email)
    {
        $query = "UPDATE hocvien SET TENHV =?,NGAYSINH=?,GIOITINH = ?,QUEQUAN = ?, EMAIL =? WHERE IDHV =?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $hoten,
            $ngaysinh,
            $gioitinh,
            $quequan,
            $email,
            $id
        ]);
        $query1 = "UPDATE tkhocvien SET USERNAME =? WHERE IDHV =?;";
        $sth1 = $this->pdo->prepare($query1);
        $sth1->execute([
            $username,
            $id
        ]);
        return true;
    }
    public function getsvtheoid($id){
        $query = "SELECT hocvien.*,tkhocvien.USERNAME,tkhocvien.PASSWORD FROM hocvien,tkhocvien WHERE hocvien.IDHV=? AND hocvien.IDHV = tkhocvien.IDHV";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $id
        ]);
        return $sth->fetch();
    }
    public function update($idhv, $hoten, $ngaysinh, $gioitinh, $quequan, $email){
        $query = "UPDATE hocvien SET TENHV =?,NGAYSINH=?,GIOITINH = ?,QUEQUAN = ?, EMAIL =? WHERE IDHV =?;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $hoten,
            $ngaysinh,
            $gioitinh,
            $quequan,
            $email,
            $idhv
        ]);
        return true;
    }
    public function updatetk($idhv, $username, $password){
        $query = "UPDATE tkhocvien SET USERNAME =?,`PASSWORD`=? WHERE IDHV =?;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $username,
            $password,
            $idhv
        ]);
        return true;
    }

    public function delete($idhv){
        $query = "DELETE FROM hocvien WHERE IDHV =?;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $idhv
        ]);
        return true;
    }
    public function deletedk($idhv){
        $query = "DELETE FROM trangthaidk WHERE IDHV =?;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $idhv
        ]);
        return true;
    }
    public function deletetk($idhv){
        $query = "DELETE FROM tkhocvien WHERE IDHV =?;";
        $sth= $this->pdo->prepare($query);
        $sth->execute([
            $idhv
        ]);
        return true;
    }
}
