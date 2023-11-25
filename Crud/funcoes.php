
<?php
include_once 'conection.php';

// Funções da CRUD

function create_character($nome, $identidade_civil, $habilidades, $historia, $universo, $funcao) {

    global $coon;

    $sql = "INSERT INTO heroes 
    (nome, identidade_civil, poder, universo, funcao) 
    VALUES ('$nome', '$identidade_civil', '$habilidades', '$universo', '$funcao')";

    if ($coon->query($sql) === TRUE) {
        echo "Novo personagem cadastrado.";
    } else{
        echo "Personagem não encontrado";
    }
}

function read_characters() {

    global $coon;
    $sql = "SELECT * FROM herois";
    $result = $coon->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "ID: ". $row["id"] 
        ."- Nome:". $row["nome"] 
        ."- Identidade civil:" . $row["identidade_civil"]
        ."- Habilidades:". $row["habilidades"] 
        ."- História:". $row["historia"]
        ."- Universo:". $row["universo"] 
        ."- Função:". $row["funcao"]
        . "<br>";
    } 
} else{

    echo "Sem resultado";
    }
}

function update_character($id, $nome, $identidade_civil, $habilidades, $historia, $universo, $funcao) {

    global $coon;

    $sql = "UPDATE usuarios SET nome = '$nome',
    identidade_civil = '$identidade_civil',
    habilidades = '$habilidades',
    historia = '$historia',
    universo = '$universo',
    funcao = '$funcao' WHERE id='$id'";

    if ($coon->query($sql) === TRUE) {
    echo "Registro atulizado com sucesso";
    } else{
    echo "Erro";
    }
}

function delete_character($id) {

    global $coon;

    $sql = "DELETE FROM usuarios WHERE id=$id";
    if ($coon->query($sql) === TRUE) {
        echo "Registro deletado com sucesso";
    } else {
        echo "Erro: " . $sql . "<br>". $coon->error;
    }
}
?>