<?php
require_once('classes/CRUD.php');
$crud = new CRUD;
$condidats = $crud->select('condidat');
$formation = $crud->select('programme');

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Les condidats</title>
</head>
<body>
    <header>
        <h1>Liste des condidats</h1>

    </header>
    <main>
        <section>
            <table  BORDER=1 WIDTH="50%">
                <tr>
                    <th>Nom Prenom</th>
                    <th>Date de naissance</th>
                    <th>Email</th>
                    <th>Adresse</th>
                    <th>Programme</th>
                    <th>Options</th>
                </tr>
                <tr>
        <?php
        foreach($condidats as $row){
        ?>
                <td><?= $row['nom']?>&nbsp;&nbsp;<?= $row['prenom']?></td>
                <td><?= $row['date_naissance']?></td>
                <td><?= $row['email']?></td>
                <td><?= $row['adresse']?></td>
                <?php
        foreach($formation as $rowF){
            if ($rowF['id'] == $row['programme_id']) {
                
                ?>        
            <td><?= $rowF['nom_programme']?></td>
            <?php 
        }
    } 
    ?>
    <td><a href="condidatEditForm.php?id=<?=$row['id']?>">Edit</a></td>
    </tr>
    <?php
}    
        ?>  

            </table>
        </section>
        <a href="index.php">Acceuil</a>
    </main>
</body>
</html>