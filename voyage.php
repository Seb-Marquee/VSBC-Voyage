<?php
require_once("./includes/connectionBDD.php");
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    
    <title>VSBC</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css">
</head>
    <?php require_once("menu.php"); ?>
<body>
<!-- liste des offres -->
<div class="container">
    <?php
    $request = $connection->query("SELECT * FROM offres ORDER BY date_start ASC");
    $data = $request->fetchAll(PDO::FETCH_ASSOC);
    
    foreach($data as $offre){
        $img = $offre["nom_offre"];
        echo '<div class="card my-2">';
        echo '<div class="card-header bg-primary text-white">';
        echo '<h3>'. $offre["lieu"] . '</h3>';
        echo "<img src='img/$img"."_1.jpg'>";
        echo '</div>';
        echo '<div class="card-body"><p>'.$offre["description"].'</p></div>';
        echo '<div class="card-footer text-right"><a class="btn btn-primary" href="offre.php?numero='.$offre["numero_offre"].'">Voir l\'offre</a>  <p class="">'.$offre["prix"].'€</p></div>';
        echo '</div>';
    }
    ?>
</div>
<a href="creatoffre.php">testform</a>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>