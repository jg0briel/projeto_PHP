<?php
include_once'funcoes.php'; // Inclui o arquivo de funções no delete

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];

    delete_character($id);
}
?>