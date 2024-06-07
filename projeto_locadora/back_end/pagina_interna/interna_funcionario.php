<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Interna</title>
</head>

<?php include '../../html/header_funcionarios.php'; ?>

<body>
    <h1>Bem-vindo(a), <?php echo $funcionarios['nome']; ?>!</h1>
    <p>Página interna apenas para funcionários</p>
    <a href="../listar_locacoes/listar_locacao.php">Locação</a> <br>

    <a href="../cadastro_cliente_interna/cadastro_forms.php">Cadastrar Clientes</a> <br>
    <a href="../crud_clientes/listar_clientes.php">Listar Clientes</a> <br>

    <a href="./logout.php">Sair</a>
</body>

</html>