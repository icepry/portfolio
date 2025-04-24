<?php
// Connexion à la base de données
$host = "localhost"; 
$dbname = "cjd"; 
$username = "root"; 
$password = ""; 

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("❌ Erreur de connexion à la base de données : " . $e->getMessage());
}

// Vérifier si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sécurisation des données principales
    $email = filter_var(trim($_POST['email']), FILTER_SANITIZE_EMAIL);
    $telephone = htmlspecialchars(trim($_POST['telephone']));
    $nombre_places = intval($_POST['number']);

    // Vérification du numéro de téléphone
    if (!preg_match('/^0[0-9]{9}$/', $telephone)) {
        die("❌ Erreur : Le numéro de téléphone doit contenir 10 chiffres et commencer par 0.");
    }

    // Vérification de l'email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        die("❌ Erreur : Adresse email invalide !");
    }

    // Vérification du nombre de places
    if ($nombre_places < 1 || $nombre_places > 10) {
        die("❌ Erreur : Le nombre de places doit être compris entre 1 et 10.");
    }

    // Préparation de la requête SQL
    $sql = "INSERT INTO reservations (nom, prenom, email, telephone, nombre_places) 
            VALUES (:nom, :prenom, :email, :telephone, :nombre_places)";
    $stmt = $pdo->prepare($sql);

    // Boucle pour insérer chaque participant
    for ($i = 1; $i <= $nombre_places; $i++) {
        if (isset($_POST["nom_$i"]) && isset($_POST["prenom_$i"])) {
            $nom = htmlspecialchars(trim($_POST["nom_$i"]));
            $prenom = htmlspecialchars(trim($_POST["prenom_$i"]));

            // Vérifier que les champs ne sont pas vides
            if (empty($nom) || empty($prenom)) {
                die("❌ Erreur : Les champs Nom et Prénom ne peuvent pas être vides.");
            }

            // Exécuter l'insertion
            $stmt->bindParam(':nom', $nom);
            $stmt->bindParam(':prenom', $prenom);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':telephone', $telephone);
            $stmt->bindParam(':nombre_places', $nombre_places);
            $stmt->execute();
        }
    }

    echo '<div class="confirmation-message">✅ Réservation enregistrée avec succès sous le sponsor Crédit Agricole !</div>';
}
?>
