<?php
require_once('./classes/CRUD.php');
$crud = new CRUD;
$formation = $crud->select('programme');
$condidats = $crud->select('condidat');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP1</title>
    <link rel="stylesheet" href="./style/style-accueil.css">
</head>
<body>
    <header>
        
        </header>
        
        <main>
            <h2>Cours en ligne</h2>
            <h3> Formation disponible</h3>
        <a href="condidatForm.php">Poser votre candidature</a>
        
        <table >
        <tr>
            <th>Nom de programme</th>
            <th>Description</th>
            
        </tr>
        <?php
        foreach($formation as $row){
        ?>
            <tr>

                <td><?= $row['nom_programme']?></td>
                <td><?= $row['description']?></td>

            </tr>
            <?php 
        } 
        ?>
        </table>
        <?php 
        if (count($condidats) == 0 || count($condidats) < 0 ) {
            echo "<h4>Personne dans la base de données n'a encore soumis de candidature.</h4>";
        } else {
        ?>
        <table >
                <tr>
                    <th>Nom Prenom</th>
                    <th>Date de naissance</th>
                    <th>Email</th>
                    <th>Adresse</th>
                    <th>Options</th>
                </tr>
                <h1>Liste des condidats</h1>
                <tr>
        <?php
        foreach($condidats as $row){
        ?>
                <td><?= $row['nom']?>&nbsp;&nbsp;<?= $row['prenom']?></td>
                <td><?= $row['date_naissance']?></td>
                <td><?= $row['email']?></td>
                <td><?= $row['adresse']?></td>
                
    <td><a href="condidatEditForm.php?id=<?=$row['id']?>">Edit /</a><a href="condidatDelete.php?id=<?=$row['id']?>"> Supprime</a></td>
    
    </tr>
    <?php
}    
        ?>  

            </table>
        <?php
        }
        ?>
        </main>
</body>
</html>