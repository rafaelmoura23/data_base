<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Clientes</title>
    <link rel="stylesheet" href="../../css/style-cadastro_clientes.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
</head>

<body>
<?php include 'html/header.html'; ?>
    <div class="container">
        <form action="cadastro_banco.php" method="post">
            <div class="col-4">
                <h2>Cadastro de Clientes</h2>
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome" class="form-control">
            </div>
            <div class="col-4">
                <label for="sobrenome">Sobrenome</label>
                <input type="text" name="sobrenome" id="sobrenome" class="form-control">
            </div>
            <div class="col-4">
                <label for="endereco">Endereco</label>
                <input type="text" name="endereco" id="endereco" class="form-control">
            </div>
            <div class="col-4">
                <label for="id_cliente">Número Cliente(id)</label>
                <input type="text" name="id_cliente" id="id_cliente" class="form-control">
            </div>
            <div class="col-4">
                <label for="cidade">Cidade</label>
                <input type="text" name="cidade" id="cidade" class="form-control">
            </div>
            <div class="col-4">
                <label for="celular">Celular</label>
                <input type="text" name="celular" id="celular" class="form-control">
            </div>
            <div class="col-4">
                <label for="email">Email</label>
                <input type="text" name="email" id="email" class="form-control">
            </div>
            <div class="col-4">
                <label for="id_pagamento">id_pagamento</label>
                <input type="text" name="id_pagamento" id="id_pagamento" class="form-control">
            </div>

            <button type="submit" name="enviarDados" class="btn btn-primary">Cadastrar Cliente</button>
            <a href="../../index.php" class="btn btn-danger">Cancelar</a>

            <a href="../login_cliente/login_clientes.php">Já tem uma Conta?Faça Login!</a>

        </form>
    </div>
</body>

</html>