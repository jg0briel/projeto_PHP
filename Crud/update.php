<?php
include_once'funcoes.php'; // Inclui o arquivo de funções no update

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["idEdit"];
    $nome = $_POST["nomeEdit"];
    $identidade_civil = $_POST["identidade_civilEdit"];
    $habilidades = $_POST["habilidadesEdit"];
    $historia = $_POST["historiaEdit"];
    $universo = $_POST["universoEdit"];
    $funcao = $_POST["funcaoEdit"];

    update_character($id, $nome, $identidade_civil, $habilidades, $historia, $universo, $funcao);
}
?>