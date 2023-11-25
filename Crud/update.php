<?php
include_once'funcoes.php'; // Inclui o arquivo de funções no update

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];
    $nome = $_POST["nome"];
    $identidade_civil = $_POST["identidade_civil"];
    $habilidades = $_POST["habilidades"];
    $historia = $_POST["historia"];
    $universo = $_POST["universo"];
    $funcao = $_POST["funcao"];

    update_character($id, $nome, $identidade_civil, $habilidades, $historia, $universo, $funcao);
}
?>