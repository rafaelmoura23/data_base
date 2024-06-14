<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Carros</title>
    <link rel="stylesheet" href="../../css/style-cadastro_clientes.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
</head>

<body>
<?php include 'html/header_clientes.php'; ?>
    <div class="container">
        <form action="cadastro_banco.php" method="post">
            <div class="col-4">
                <h2>Cadastro de Carros</h2>
                <label for="modelo">modelo</label>
                <input type="text" name="modelo" id="modelo" class="form-control">
            </div>
            <div class="col-4">
                <label for="tipo">tipo</label>
                <input type="text" name="tipo" id="tipo" class="form-control">
            </div>
            <div class="col-4">
                <label for="ano">ano</label>
                <input type="text" name="ano" id="ano" class="form-control">
            </div>
            <div class="col-4">
                <label for="id_carro">id do carro</label>
                <input type="text" name="id_carro" id="id_carro" class="form-control">
            </div>
            <div class="col-4">
                <label for="placa">placa</label>
                <input type="text" name="placa" id="placa" class="form-control">
            </div>
            <div class="col-4">
                <label for="disponibilidade">disponibilidade</label>
                <input type="text" name="disponibilidade" id="disponibilidade" class="form-control">
            </div>
            <div class="col-4">
                <label for="id_agencia">id_agencia</label>
                <input type="text" name="id_agencia" id="id_agencia" class="form-control">
            </div>
            <div class="col-4">
                <label for="preco_aluguel">preco_aluguel</label>
                <input type="text" name="preco_aluguel" id="preco_aluguel" class="form-control">
            </div>

            <button type="submit" name="enviarDados" class="btn btn-primary">Cadastrar Carro</button>
            <a href="../../index.php" class="btn btn-danger">Cancelar</a>

        </form>
    </div>
</body>

</html>