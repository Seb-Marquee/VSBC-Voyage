<?php
session_start();
require_once("./includes/connectionBDD.php");
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
</head>
<body>
        <?php require_once("menu.php"); ?>
    <form method="POST" action="inscription.php">
        <div>
        <label for="nom"> Nom </label>
        <input type="text" id="nom" name="nom">
        </div>
        <div>
        <label for="prenom"> Prenom </label>
        <input type="text" id="prenom" name="prenom">
        </div>
        <div>
        <label for="pseudo"> Pseudo </label>
        <input type="text" id="pseudo" name="pseudo">
        </div>
        <div>
        <label for="mail"> votre e-mail</label>
        <input type="email" id="mail" name="mail">
        </div>
        <div>
        <label for="tel"> entrez votre numéro de téléphone </label>
        <input type="tel" id="tel" name="tel">
        </div>
        <div>
        <label for="adresse"> entrez votre adresse</label>
        <input type="text" id="adresse" name="adresse">
        </div>
        <div>
        <label for="ville"> entrez votre ville</label>
        <input type="text" id="ville" name="ville">
        </div>
        <div>
        <label for="pass">Mot de passe :</label>
        <input type="password" id="pass" name="pass">
        </div>
        <div>
        <label for="pass2">Confirmez votre mot de passe :</label>
        <input type="password" id="pass2" name="pass2">
        </div>
        <button type="submit"> valider mon inscription</button>
    </form>

    <?php
        if(!empty($_SESSION["error"])) {
        echo "<p>".$_SESSION["error"]."</p>";
        }
    ?>
</body>
</html>