<?php
require_once('classes/CRUD.php');
$crud = new CRUD;
$formation = $crud->select('programme');

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
            <h2>Cours en ligne</h2>
            <h3> Formation disponible</h3>
        <a href="condidatForm.php">Poser votre candidature</a>
        <a href="condidatsListe.php">Liste candidatures</a>
        <table >
        <tr>
            <th>Nom de programme</th>
            <th>Description</th>
            
        </tr>
        <?php
        foreach($formation as $row){
        ?>
            <tr>

                <td><a href="client-show.php?id=<?= $row['id']?>"><?= $row['nom_programme']?></a></td>
                <td><?= $row['description']?></td>

            </tr>
            <?php 
        } 
        ?>
        </table>
        </main>
</body>
</html>