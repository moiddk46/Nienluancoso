<?php
class thongkemodel extends connect{
    public function thongketheothang($thang){
        $query = "SELECT NGAYTHU, SUM(DATHU) AS TONG FROM `phieuthu` WHERE MONTH(NGAYTHU)=? GROUP BY NGAYTHU;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $thang
        ]);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
    public function thongketheonam($nam){
        $query = "SELECT MONTH(NGAYTHU) AS THANG, SUM(DATHU) AS TONG FROM `phieuthu` WHERE YEAR(NGAYTHU)=? GROUP BY MONTH(NGAYTHU);";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $nam
        ]);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }
}