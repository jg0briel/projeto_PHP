<?php
include_once 'conection.php';

// Funções da CRUD

function create_character($nome, $identidade_civil, $habilidades, $historia, $universo, $funcao) {

    global $conexao;

    $sql = "INSERT INTO heroes 
    (nome_heroi, identidade_civil, habilidades, historia, universo, funcao) 
    VALUES ('$nome', '$identidade_civil', '$habilidades', '$historia', '$universo', '$funcao')";

    if ($conexao->query($sql) === TRUE) {
        echo "Novo personagem cadastrado.";
    } else{
        echo "Personagem não encontrado" . $conexao->error;;
    }
}

function read_characters() {

    global $conexao;
    $sql = "SELECT * FROM herois";
    $result = $conexao->query($sql);

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

    global $conexao;

    $sql = "UPDATE usuarios SET nome = '$nome',
    identidade_civil = '$identidade_civil',
    habilidades = '$habilidades',
    historia = '$historia',
    universo = '$universo',
    funcao = '$funcao' WHERE id='$id'";

    if ($conexao->query($sql) === TRUE) {
    echo "Registro atulizado com sucesso";
    } else{
    echo "Erro";
    }
}

function delete_character($id) {

    global $conexao;

    $sql = "DELETE FROM usuarios WHERE id=$id";
    if ($conexao->query($sql) === TRUE) {
        echo "Registro deletado com sucesso";
    } else {
        echo "Erro: " . $sql . "<br>". $conexao->error;
    }
}
?>