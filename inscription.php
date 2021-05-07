<?php
    session_start();
    $_SESSION = array();

    /*début du controle du form*/
    if(!empty($_POST["nom"]) 
    && !empty($_POST["prenom"]) 
    && !empty($_POST["pseudo"]) 
    && !empty ($_POST["mail"]) 
    && !empty ($_POST["tel"])
    && !empty ($_POST["adresse"])
    && !empty ($_POST["ville"])
    && !empty ($_POST["pass"])
    && !empty ($_POST["pass2"])
    ){
        if($_POST["pass"] === $_POST["pass2"]) {
            try {
                $dbh = new PDO('mysql:host=localhost;dbname=vsbc', "root", "admin");
                $request = $dbh->prepare("INSERT INTO utilisateur(nom, prenom, pseudo, mail, tel, adresse, ville, pass) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
                $request->execute([
                    $_POST["pseudo"],

                    password_hash($_POST["pass"], PASSWORD_BCRYPT) /* petit cryptage */ 
                ]);               
                $_SESSION["pseudo"] = $_POST["pseudo"];
               
                header("Location: ???.php"); /* à choisir */
            exit;
                }
                catch(PDOException $e){
                echo "Erreur : " . $e->getMessage();
                }
        }
    }else   {
            $_SESSION["error"] = "Les mots de passe doivent être identiques.";
            header("Location: index.php");
            exit;
            }
?>
