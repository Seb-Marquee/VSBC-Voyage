<?php
require_once("./includes/connectionBDD.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <?php
        echo $_GET["numero"];

        $req = $connection->prepare("SELECT * FROM offres WHERE numero_offre=?");
        $req->execute([$_GET["numero"]]);
        $data = $req->fetch(PDO::FETCH_ASSOC);
    ?>
        <h1> <?php echo $data["titre"]; ?> </h1>
        <h2> <?php echo $data["lieu"] ?> vous ouvre ces portes </h2>

       <!-- ALT  a débug -->
        <div>      
            <?php
            $img = $data["nom_offre"];
            $lieu = $data["lieu"];
            echo "<img src='img/$img"."_1.jpg' alt='une vue général de $lieu ' >";
        ?> 
        </div>
        <p> <?php echo $data["description"] ?> </p>
        <p> <?php echo $data["duree"] ?> </p>
        <p>Réservez votre voyage <?php echo $data["titre"] ?> est de risque <?php echo $data["risques"] ?> vous ai proposer au prix de <?php echo $data["prix"] ?>€ <span>TTC</span></p>

        <?php
            echo "<img src='img/$img"."_2.jpg' alt=' '/>";
            echo "<img src='img/$img"."_3.jpg' alt=' '/>";
        ?> 

        <button> <a href="../voyage.php"> retour aux offres</a></button>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>        
</body>
</html>