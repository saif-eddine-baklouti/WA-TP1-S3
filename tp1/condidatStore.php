<?php
require_once('classes/CRUD.php');

$crud = new CRUD;

// var_dump($_GET);
$insert = $crud->insert('condidat', $_GET);

header("location:condidatsListe.php");

?>