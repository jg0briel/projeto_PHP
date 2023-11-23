<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST["id"];

    $sql = "DELETE FROM usuarios WHERE id=$id";

    if ($coon->query($sql) === TRUE) {
        echo "Registro deletado com sucesso";
    } else {
        echo "Erro: " . $sql . "<br>". $conn->error;
    }
}
?>