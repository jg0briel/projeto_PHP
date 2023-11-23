<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $identidade_secreta = $_POST["identidade secreta"];
    $poder = $_POST["poder"];
    $fraqueza = $_POST["fraqueza"];

    $sql = "INSERT INTO herois (nome, identidade secreta, poder, fraqueza) VALUES ('$nome', '$identidade_secreta', '$poder', '$fraqueza')";

    if ($coon->query($sql) === TRUE) {
        echo "Novo heroi cadastrado.";
    } else{
        echo "Heroi não encontrado";
    }
}
?>