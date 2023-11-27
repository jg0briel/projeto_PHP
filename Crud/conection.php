<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "heroes_project";

    // Estabelece conexão com o banco
    $conexao = new mysqli($servername, $username, $password, $dbname);

    // Verificação
    if ($conexao->connect_error) {
        die("Conexão falhou: " . $conexao->connect_error);
    } 
    else {
        echo "Conexão bem-sucedida!";
    }
?>
