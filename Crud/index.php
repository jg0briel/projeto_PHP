<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
</head>
<body>
    <nav class="conteiner">
        <div>
            <div class="nav-conteiner">
                <img id="logo" scr="./img/shivalogo.jpeg" alt="Logo projeto">
                <ul class ="navbar-nav">
                    <li class="nav-item"><a class="nav-link" aria-current="page" href="index.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="page=novo">Novo Herói</a></li>
                    <li class="nav-item"><a class="nav-link" href="page=listar">Listar Heróis</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col mt-5">
                <?php
                    switch(@$_REQUEST["page"]){
                        case "novo":
                            include("novo-usuario.php");
                        break;
                        case "lista":
                            include("listar-usuario.php");
                        break;
                        default:
                        echo"Bem vindo";
                    }
                ?>
            </div>
        </div>
    </div>
</body>
</html>