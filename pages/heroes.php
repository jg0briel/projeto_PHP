<?php
include('../Crud/funcoes.php');

error_reporting(E_ALL);
ini_set('display_errors', '1');
?>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Heroes Database</title>
    <link rel="stylesheet" href="../static/css/global.css" />
      <link rel="stylesheet" href="../static/css/heroes.css" />
    <link rel="stylesheet" href="../static/css/modalExcluir.css">
    <link rel="stylesheet" href="../static/css/modalEditar.css">
    <link rel="stylesheet" href="../static/css/modalCriar.css">

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <header class="header">
      <nav>
        <img src="../static/images/batman-icon.svg" alt="Ícone do Batman" />
        <ul>
          <li><a href="index.html#top">Início</a></li>
          <li><a href="heroes.php#top">Heróis</a></li>
          <li><a href="villains.php#top">Vilões</a></li>
        </ul>
      </nav>
    </header>
    <main class="main" id="top">
      <?php
        read_characters();
      ?>
      <section class="card-create">
        <div class="sizeFull">
          <button class="open-modal-btn-create">Adicione aqui o seu herói!</button>
        </div>
      </section>
        <!-- <section class="card">
          <div class="content-data">
            <p>Nome:</p>
            <p>Identidade Civil:</p>
            <p>Habilidades:</p>
            <p>História:</p>
            <p>Universo:</p>
            <p>Função:</p>
          </div>
          <div class="delete">
            <button class="open-modal-btn-delete"><img src="../static/images/delete.png" alt="Apagar"></button>
          </div>
          <div class="edit">
            <button class="open-modal-btn"><img src="../static/images/edit.png" alt="Editar"></button>
            </div>
          </div>
        </section> -->
       

        <section id="modals">
          <div id="create-modal">
            <div id="overlay-create"></div>
            <div id="modal-create">
                <span id="close-btn-create" onclick="closeModalCreate()">&times;</span>
                <h2>Adicionar Heróis</h2>
                <div class="content-create">
                  <form id="createHero" method="POST">
                    <label for="nome">Nome</label>
                    <input type="text" id="nome" name="nome" required>
      
                    <label for="identidade_civil">Identidade Civil</label>
                    <input type="text" id="identidade_civil" name="identidade_civil" required>
      
                    <label for="habilidades">Habilidades</label>
                    <input type="text" id="habilidades" name="habilidades">
      
                    <label for="historia">História</label>
                    <textarea class="area" oninput="resizeTextArea(this)" id="historia" name="historia" required></textarea>
      
                    <label for="universo">Universo</label>
                    <input type="text" id="universo" name="universo" required>
    
                    <label for="funcao">Função</label>
                    <input type="text" id="funcao" name="funcao" required>
      
                    <button type="submit">Cadastrar</button>
                  </form>
              </div>
          </div>
          <div id="edit-modal">
            <div id="overlay"></div>
            <div id="modal">
              <span id="close-btn" onclick="closeModal()">&times;</span>
              <h2>Editar</h2>
              <div class="content">
                <form action="">
                  <label>Nome</label>
                  <input type="text">
    
                  <label>Identidade Civil</label>
                  <input type="text">
    
                  <label>Habilidades</label>
                  <input type="text">
    
                  <label>História</label>
                  <textarea id="myTextAreaCreate" class="area-create" oninput="resizeTextArea(this)"></textarea>
    
                  <label>Universo</label>
                  <input type="text">

                  <label>Função</label>
                  <input type="text">
    
                  <button type="submit">Enviar</button>
                </form>
              </div>
          </div>  
          <div id="delete-modal">
            <div id="overlay-delete"></div>
            <div id="modal-delete">
                <span id="close-btn-delete" onclick="closeModalDelete()">&times;</span>
                <h2>Excluir</h2>
                <div class="content-delete">
                  <div class="text-delete">
                    <p>Tem certeza que deseja excluir?</p>
                  </div>
                  <button onclick="deleteData()">Sim</button>
                  <button onclick="closeModalDelete()">Não</button>
                </div>
              </div>
          </div>
        </section>
      </div>
    </main>
    <footer class="footer">
      <section>
        <h4>Projeto da disciplina de programação web</h4>
        <h5>Desenvolvido por:</h5>
        <ul>
          <li>Gabriel Montenegro de Oliveira Bezerra</li>
          <li>Heitor de Oliveira Mamede</li>
          <li>João Gabriel Barreto de Araújo Falcão</li>
          <li>Júlio César Carvalho Santos</li>
          <li>Kauã Ravy Alves Pontes</li>
          <li>Perilo Oliveira Viana Sobrinho</li>
        </ul>
      </section>
    </footer>
    <script src="../static/js/index.js"></script>
    <script src="../static/js/modalCreate.js"></script>
    <script src="../static/js/modalEdit.js"></script>
    <script src="../static/js/modalDelete.js"></script>
  </body>
</html>
