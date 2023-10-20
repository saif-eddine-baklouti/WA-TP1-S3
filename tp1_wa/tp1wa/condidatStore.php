<?php
require_once('./classes/CRUD.php');

$crud = new CRUD;


$insert = $crud->insert('condidat', $_GET);


header("location:index.php");

?>