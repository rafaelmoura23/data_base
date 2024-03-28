<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <div class="container">
        <form action="cadastro_cliente.php" method="post">
            <div class="col-4">
                <label for="cpf">CPF</label>
                <input type="text" name="cpf" id="cpf" class="form-control">
            </div>
            <div class="col-4">
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome" class="form-control">
            </div>
            <br>
            <br>
            <div class="col-4">
                <label for="telefone">Telefone</label>
                <input type="text" name="telefone" id="telefone" class="form-control">
            </div>
            <br>
            <div class="col-4">
                <label for="endereco">Endereço</label>
                <input type="text" name="endereco" id="endereco" class="form-control">
            </div>

            <br>
            <button type="submit" name="enviarDados" class="btn btn-primary">Cadastrar Cliente</button>

            <a href="index.php" class="btn btn-danger">Cancelar</a>
        </form>
    </div>

</body>

</html>