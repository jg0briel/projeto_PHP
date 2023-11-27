<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>CRUD dos Herois</title>
        </head>
        <body>
            <form action="create.php" method="POST">
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" required><br>

                <label for="identidade_civil">Identidade Civil</label>
                <input type="text" id="identidade_civil" name="identidade_civil" required><br>

                <label for="habilidades">Habilidades:</label>
                <textarea id="habilidades" name="habilidades" rows="4" required></textarea><br>

                <label for="historia">História:</label>
                <textarea id="historia" name="historia" rows="6" required></textarea><br>

                <label for="universo">Universo:</label>
                <input type="text" id="universo" name="universo" required><br>

                <label for="funcao">Função:</label>
                <input type="text" id="funcao" name="funcao" required><br>

                <input type="submit" value="Cadastrar">
            </form>
        </body>
    </html>