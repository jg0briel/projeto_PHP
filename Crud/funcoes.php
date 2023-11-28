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

function read_characters()
{
    global $conexao;
    $sql = "SELECT * FROM heroes";
    $result = $conexao->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<section class='card'>";
            echo "<div class='content-data'>";
            echo "<p>Nome: " . $row["nome_heroi"] . "</p>";
            echo "<p>Identidade Civil: " . $row["identidade_civil"] . "</p>";
            echo "<p>Habilidades: " . $row["habilidades"] . "</p>";
            echo "<p class='history'>História: " . $row["historia"] . "</p>";
            echo "<p>Universo: " . $row["universo"] . "</p>";
            echo "<p>Função: " . $row["funcao"] . "</p>";
            echo "</div>";
            echo "<div class='delete'>";
            echo "<button class='open-modal-btn-delete'><img src='../static/images/delete.png' alt='Apagar'></button>";
            echo "</div>";
            echo "<div class='edit'>";
            echo "<button class='open-modal-btn' data-id='" . $row['id'] . "'><img src='../static/images/edit.png' alt='Editar'></button>";
            echo "</div>";
            echo "</div>";
            echo "</section>";
        }
    } else {
        echo "Sem resultado";
    }
}

function read_heroes()
{
    global $conexao;
    $sql = "SELECT * FROM heroes WHERE funcao LIKE 'H%' OR 'h%';";
    $result = $conexao->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<section class='card'>";
            echo "<div class='content-data'>";
            echo "<p>Nome: " . $row["nome_heroi"] . "</p>";
            echo "<p>Identidade Civil: " . $row["identidade_civil"] . "</p>";
            echo "<p>Habilidades: " . $row["habilidades"] . "</p>";
            echo "<p class='history'>História: " . $row["historia"] . "</p>";
            echo "<p>Universo: " . $row["universo"] . "</p>";
            echo "<p>Função: " . $row["funcao"] . "</p>";
            echo "</div>";
            echo "<div class='delete'>";
            echo "<button class='open-modal-btn-delete'><img src='../static/images/delete.png' alt='Apagar'></button>";
            echo "</div>";
            echo "<div class='edit'>";
            echo "<button class='open-modal-btn' data-id='" . $row['id'] . "'><img src='../static/images/edit.png' alt='Editar'></button>";
            echo "</div>";
            echo "</div>";
            echo "</section>";
        }
    } else {
        echo "Sem resultado";
    }
}

function read_villains()
{
    global $conexao;
    $sql = "SELECT * FROM heroes WHERE funcao LIKE 'V%' OR 'v%'";
    $result = $conexao->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<section class='card'>";
            echo "<div class='content-data'>";
            echo "<p>Nome: " . $row["nome_heroi"] . "</p>";
            echo "<p>Identidade Civil: " . $row["identidade_civil"] . "</p>";
            echo "<p>Habilidades: " . $row["habilidades"] . "</p>";
            echo "<p class='history'>História: " . $row["historia"] . "</p>";
            echo "<p>Universo: " . $row["universo"] . "</p>";
            echo "<p>Função: " . $row["funcao"] . "</p>";
            echo "</div>";
            echo "<div class='delete'>";
            echo "<button class='open-modal-btn-delete'><img src='../static/images/delete.png' alt='Apagar'></button>";
            echo "</div>";
            echo "<div class='edit'>";
            echo "<button class='open-modal-btn' data-id='" . $row['id'] . "'><img src='../static/images/edit.png' alt='Editar'></button>";
            echo "</div>";
            echo "</div>";
            echo "</section>";
        }
    } else {
        echo "Sem resultado";
    }
}


function update_character($id, $nome, $identidade_civil, $habilidades, $historia, $universo, $funcao) {

    global $conexao;

    $sql = "UPDATE heroes SET nome_heroi = '$nome',
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