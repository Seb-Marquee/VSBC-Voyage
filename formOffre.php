<?php
    require_once("./includes/connectionBDD.php");
    $req = $connection->prepare("INSERT INTO offres (titre, lieu, duree, date_start, risques, prix, description, nom_offre) VALUES (?,?,?,?,?,?,?,?)");
    if($req->execute([
        $_POST['titre'], 
        $_POST['lieu'], 
        $_POST['duree'], 
        $_POST['date_start'], 
        $_POST['risques'],  
        $_POST['prix'], 
        $_POST['description'], 
        $_POST['nom_offre'],
    ]))
    $uploaddir = "img/" ;
    $uploadfile = $uploaddir . basename($_FILES['image']['name']);

    //var_dump($_FILES);
    //print $uploadfile;

    if (move_uploaded_file($_FILES['image']['tmp_name'], $uploadfile)) {
        echo "ok";
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <button><a href="voyage.php"> back</a></button>
</body>
</html>