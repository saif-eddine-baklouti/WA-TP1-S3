<?php

class CRUD extends PDO {

    public function __construct(){
        parent::__construct('mysql:host=localhost; dbname=ecole; port=3306; charset=utf8', 'root', '');
    }

    
    public function select($table, $field='id', $order='ASC'){
        $sql="SELECT * FROM $table ORDER BY $field $order";
        $stmt = $this->query($sql);
        return $stmt->fetchAll();
    }
}


?>