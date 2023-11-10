<?php
class connect{
    public $pdo;
    private $localhost= "localhost";
    private $name = "oceanenglishcenter";
    private $username="root";
    private $pass="";
    
    function __construct()
    {
            $this->pdo = new PDO("mysql:host={$this->localhost};dbname={$this->name}", $this->username, $this->pass);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
    }
?>