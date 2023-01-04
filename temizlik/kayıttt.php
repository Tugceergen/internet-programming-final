<?php

class temizlik
{
    private function getDbConf()
    {
        return array("mysql:host=localhost;dbname=db_temizlik", "root", "");
    }

    public function gettemizlik($temizlikId = 0)
    {
        if ($temizlikId) {
            $dbCongArr = $this->getDbConf();
            try {
                $db = new PDO($dbCongArr[0], $dbCongArr[1], $dbCongArr[2]);
            } catch (PDOException $e) {
                return false;
            }
            $query = $db->prepare("SELECT * FROM tbl_temizlik   JOIN tbl_temizlik ON tbl_temizlik_id = tbl_temizlik.id 
			WHERE tbl_temizlik_id = :temizlikid");
            $result = $query->execute([":temizlikid"=>$temizlikId]);
            $temizlik = $query->fetchAll(PDO::FETCH_ASSOC);
            return $temizlik;
        }
    }

    public function gettemizlikById($temizlikId = 0)
	
    {
        if ($temizlikId) {
            $dbCongArr = $this->getDbConf();
            try {
                $db = new PDO($dbCongArr[0], $dbCongArr[1], $dbCongArr[2]);
            } catch (PDOException $e) {
                return false;
            }
            $query = $db->prepare("SELECT * FROM tbl_temizlik    JOIN tbl_temizlik ON tbl_temizlik_id = tbl_temizlik.id   WHERE tbl_temizlik.id = :temizlikId");
            $result = $query->execute([":temizlikId"=>$temizlikId]);
            $temizlik = $query->fetch(PDO::FETCH_ASSOC);
            return $temizlik;
        }
    }






}
