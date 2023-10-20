<?php
require_once("./classes/CRUD.php");

$crud = new CRUD;

echo  "<pre>";
var_dump( $_GET );
var_dump( $_GET["id"] );
echo "</pre>";

$update = $crud->update("condidat", $_GET );

var_dump($update);
header("location:index.php");

?>