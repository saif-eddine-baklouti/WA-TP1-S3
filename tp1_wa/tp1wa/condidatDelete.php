<?php
require_once('./classes/CRUD.php');

$crud = new CRUD;
$delete = $crud->delete('condidat', $_GET['id']);

?>