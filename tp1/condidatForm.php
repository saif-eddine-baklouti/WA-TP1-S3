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
    <title>inscription</title>
</head>
<body>
    <main>
        <form action="condidatStore.php" method="GET">
            <label>Nom</label>
                <input type="text" name="nom">
            <label>Prenom</label>
                <input type="text" name="prenom">
            <label for="">Date de naissaince</label>
                <input type="text" name="date_naissance">
            <label for="">Email</label>
                <input type="text" name="email">
            <label for="">Adresse</label>
                <input type="text" name="adresse">
            <label for="">Programme souhaité</label>
            <select name="programme_id" id="">
            <?php
        foreach($formation as $row){
        ?>
                <option  value="<?= $row['id']?>"><?= $row['nom_programme']?></option>

        <?php 
        } 
        ?>        
            </select>
            <button> inscription</button>
        </form>
        <a href="index.php">Acceuil</a>
    </main>
</body>
</html>