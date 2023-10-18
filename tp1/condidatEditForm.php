<?php


if(isset($_GET['id']) && $_GET['id']!=null ){
    $id= $_GET['id'];
    echo $id;
    require_once('classes/CRUD.php');
    $crud = new CRUD;
    $condidat = $crud->selectId('condidat', $id);
    $formation = $crud->select('programme');
    //     // foreach($client as $key=>$value){
        //     //     $$key=$value;
        //     // }
        
        extract($condidat);
        $programme = $crud->selectId('programme', $programme_id);
        extract($programme);
        echo $nom_programme;


}else{
    header('location:index.php');
}
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
        <form action="condidatUpdate.php" method="GET">
            <input type="hidden" name="id" value="<?= $id; ?>">
            <label>Nom</label>
                <input type="text" name="nom" value="<?= $nom; ?>">
            <label>Prenom</label>
                <input type="text" name="prenom" value="<?= $prenom; ?>">
            <label for="">Date de naissaince</label>
                <input type="text" name="date_naissance" value="<?= $date_naissance; ?>">
            <label for="">Email</label>
                <input type="text" name="email" value="<?= $email; ?>">
            <label for="">Adresse</label>
                <input type="text" name="adresse" value="<?= $adresse; ?>">
            <label for="">Programme souhaité</label>
            <select name="programme_id" >
            <?php
        foreach($formation as $row){
            if ($row['nom_programme'] == $nom_programme) {
                ?>
                
                <option  value="<?= $row['id']?>" selected><?= $row['nom_programme']?></option>
                
                <?php 
            } else {
                ?>
                <option  value="<?= $row['id']?>" ><?= $row['nom_programme']?></option>
            <?php
            }
        } 
        ?>        
            </select>
            <button> Modification</button>
        </form>
        <a href="index.php">Acceuil</a>
    </main>
</body>
</html>