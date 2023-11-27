<?php
include_once 'conection.php';
include_once 'funcoes.php'; // Inclui o arquivo de funções no create

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $identidade_civil = $_POST["identidade_civil"];
    $habilidades = $_POST["habilidades"];
    $historia = $_POST["historia"];
    $universo = $_POST["universo"];
    $funcao = $_POST["funcao"];

    create_character($nome, $identidade_civil, $habilidades, $historia, $universo, $funcao);
}
?>