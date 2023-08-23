<?php
class Sinhvienmodel extends connect{
    public function getallsv(){
        $query = "SELECT * FROM hocvien";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
        
        // return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>