<?php
require_once('classes/CRUD.php');

$crud = new CRUD;

echo  "<pre>";
var_dump( $_GET );
echo "</pre>";
$update = $crud->update('condidat', $_GET);

header("location:condidatsListe.php");

?>