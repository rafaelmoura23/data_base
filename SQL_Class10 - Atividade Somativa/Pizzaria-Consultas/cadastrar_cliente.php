<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Clientes</title>
    <link rel="stylesheet" href="style/styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
</head>

<body>
<?php include 'html/header.html'; ?>
    <div class="container">
        <form action="cadastro_cliente.php" method="post">
            <div class="col-4">
                <h2>Cadastro de Clientes</h2>
                <label for="cpf">CPF</label>
                <input type="text" name="cpf" id="cpf" class="form-control">
            </div>
            <div class="col-4">
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome" class="form-control">
            </div>
            <div class="col-4">
                <label for="telefone">Telefone</label>
                <input type="text" name="telefone" id="telefone" class="form-control">
            </div>
            <div class="col-4">
                <label for="endereco">Endereço</label>
                <input type="text" name="endereco" id="endereco" class="form-control">
            </div>
            <button type="submit" name="enviarDados" class="btn btn-primary">Cadastrar Cliente</button>

            <a href="index.php" class="btn btn-danger">Cancelar</a>
        </form>
    </div>
    <?php include 'html/footer.html'; ?>
</body>

</html>