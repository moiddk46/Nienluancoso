<?php
class loginmodel extends connect
{
    public function checktk($username, $password)
    {
        $query = "SELECT * FROM tkhocvien WHERE username=? AND pass=?";
        $sth = $this->pdo->prepare($query);
        $sth->execute([
            $username,
            $password
        ]);
        // $tk = $sth->fetch();
        // echo $tk['username'];
        if ($sth->rowcount() == 1) {
            return 3;
        } else {
            $query1 = "SELECT * FROM tkgiaovien WHERE username=? AND pass=?";
            $sth1 = $this->pdo->prepare($query1);
            $sth1->execute([
                $username,
                $password
            ]);
            if($sth1->rowCount() == 1){
                $tk2 = $sth1->fetch();
                if($tk2['phanquyen']==0){
                    // echo "1";
                    return 1;
                }else{
                    return 2;
                    // echo "2";
                }
            }
        }
        return 0;
    }
}
