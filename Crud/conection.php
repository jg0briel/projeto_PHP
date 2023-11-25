<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "heroes_project";

    // Estabelece conexão com o banco
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificação
    if ($conn->connect_error) {
        die("Conexão falhou: " . $conn->connect_error);
    } 
    else {
        echo "Conexão bem-sucedida!";
    }
?>
