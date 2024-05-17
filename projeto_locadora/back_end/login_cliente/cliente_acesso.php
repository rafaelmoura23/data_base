<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Clientes</title>
    <link rel="stylesheet" href="/style/style-cadastro-clien.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
</head>

<body>
    <div class="container">
        <form action="insert_banco_login.php" method="post">
            <div class="col-4">
                <h2>Cadastro de Clientes</h2>
                <label for="cpf">CPF</label>
                <input type="text" name="cpf" id="cpf" class="form-control">
            </div>
            <div class="col-4">
                <label for="senha">Senha</label>
                <input type="password" name="senha" id="senha" class="form-control">
            </div>
            <div class="btns">
            <button type="submit" name="enviarDados" class="btn btn-primary">Cadastrar-se</button>
            <button type="submit" name="enviarDados" class="btn btn-primary">Cancelar</button>
        </div>
        </form>
    </div>

</body>

</html>