<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $nome = $_POST['nome'];
    $identidade_secreta = $_POST["identidade secreta"];
    $poder = $_POST["poder"];
    $fraqueza = $_POST["fraqueza"];

    $sql = "UPDATE usuarios SET nome='$nome', identidade_secreta='$identidade_secreta', poder='$poder', fraqueza='$fraqueza' WHERE id='$id'";

    if ($coon->query($sql) === TRUE) {
        echo "Registro atulizado com sucesso";
    } else{
        echo "Erro";
    }
}
?>