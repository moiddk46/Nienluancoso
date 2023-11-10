<?php
class registercouresmodel extends connect
{
    public function getallcoures()
    {
        $query = "SELECT * FROM khoahoc";
        $sth = $this->pdo->prepare($query);
        $sth->execute();
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getclass($idkh)
    {
        $query = "SELECT lop.* FROM khoahoc, lop WHERE khoahoc.IDKH = ? AND khoahoc.IDKH = lop.IDKH";
        $sth = $this->pdo->prepare($query);
        $sth->execute([$idkh]);
        return $sth->fetchAll(PDO::FETCH_ASSOC);
    }

    public function checkregistercoures($idhv)
    {
        $trangthai = 'Chưa hoàn thành';
        $query = "SELECT * FROM trangthaidk WHERE IDHV =? AND TRANGTHAI = ? ;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idhv,
            $trangthai
        ]);
        if ($sth->rowCount() == 1) {
            return false;
        }
        return true;
    }

    public function addstatus($idhv, $idlop)
    {
        $trangthai = 'Chưa hoàn thành';
        $query = "INSERT INTO trangthaidk(`IDHV`, `IDLOP`, `TRANGTHAI`) values (?,?,?);";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idhv,
            $idlop,
            $trangthai
        ]);
        if ($sth->rowCount() == 1) {
            return true;
        }
        return false;
    }

    public function submithocphi($idhv, $hocphi)
    {
        $date_array = getdate();
        $formated_date  = "";
        $formated_date .= $date_array['year'] ."-";
        $formated_date .= $date_array['mon'] . "-";
        $formated_date .= $date_array['mday'];
        $Ngaythu = $formated_date;

        $query = "INSERT INTO PHIEUTHU(`IDHV`, `PHAITHU`, `DATHU`, `NGAYTHU`) VALUES (?,?,?,?)";
        $sth=$this->pdo->prepare($query);
        $sth->execute([
            $idhv,
            $hocphi,
            $hocphi,
            $Ngaythu
        ]);
        if ($sth->rowCount() == 1) {
            return true;
        }
        return false;
    }

    public function gethocphi($idkh)
    {
        $query = "SELECT HOCPHI.* FROM HOCPHI, KHOAHOC WHERE KHOAHOC.IDKH =HOCPHI.IDKH AND khoahoc.IDKH = ?;";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $idkh
        ]);
        return $sth->fetch();
    }
}
