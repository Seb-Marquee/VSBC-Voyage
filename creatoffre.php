<?php
require_once("./includes/connectionBDD.php");
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>création d'offre</title>
</head>
<body>
    <?php require_once("menu.php") ?>
    <form method="post" action="formOffre.php" enctype="multipart/form-data">
        <div>
            <label for="titre"> Titire de l'offfre</label>
            <input type="text" name="titre" placeholder="titre de l'offre" required>
        </div>
        <div>
            <label for="lieu"> Pays de l'offre</label>
            <input type="text" name="lieu" placeholder="lieu de l'offre" required>
        </div>
        <div>
            <label for="nom_offre"> indiquer le nom de l'offre</label>
            <input type="text" name="nom_offre" placeholder="merci d'indiquer un nom de l'offre" required>
        </div>
        <div>
            <label for="duree"> durée du séjour</label>
            <input type="text" name="duree" placeholder="durée de l'offre en jour" required>
        </div>
        <div>
            <label for="date_start"> date du séjour</label>
            <input type="date" name="date_start" required>
        </div>
        <div>
            <label for="risques"> risque du séjour</label>
            <input type="number" name="risques" min="0" max="5" placeholder="0" required>
        </div>
        <div>
            <label for="prix"> prix du séjour (TTC) </label>
            <input type="number" name="prix" placeholder="0000" required> <span>€</span>
        </div>
        <div>
            <label for="description"> description de l'offre</label >
            <input type="text" name="description" required maxlength="144"> 
        </div>
        <div>
            <label for="image"> images de l'offre (attention de bien nomer les images comme sur la notice) </label> 
            <input type="file"  name="image" id="image" multiple>
        </div>
        <div>
            <label for="verifier"> relisez vous avant de valider merci</label>
            <input type="checkbox" name="verifier" required>
        </div>
        <div>
        <input type="submit" value="Envoyer le formulaire" name="submit">
        </div>
    
    </form>
</body>
</html>