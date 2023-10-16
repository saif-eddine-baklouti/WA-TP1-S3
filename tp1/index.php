<?php
require_once('classes/CRUD.php');
$crud = new CRUD;
$client = $crud->select('etudiant');

// echo "<pre>";
// var_dump($client);
// // print_r($client);
// echo "<pre>";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <header>
        <h1>Acceuil</h1>
        </header>
        
        <main>
            <h2>Liste principale d'etudiants</h2>
        <a href="">Ajoute Etudiant</a>
        <table>
        <tr>
            <th>Numero Etudiant</th>
            <th>Nom & Prenom</th>
            <th>Email</th>
            <th>Ville</th>
            
        </tr>
        <?php
        foreach($client as $row){
        ?>
            <tr>
                <td><a href="client-show.php?id=<?= $row['id']?>"><?= $row['id']?></a></td>
                <td><a href="client-show.php?id=<?= $row['id']?>"><?= $row['nom']?> <?= $row['prenom']?> </a></td>
                <td><?= $row['email']?></td>
                <td><?= $row['ville']?></td>
            </tr>
        </table>
        <?php 
        } 
        ?>
        </main>
</body>
</html>