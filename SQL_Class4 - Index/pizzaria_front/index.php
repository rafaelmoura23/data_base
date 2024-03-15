<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Cadastrar Novo(a) Usuário(a)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-
+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>

<body>
    <!--
Nome Completo
Data de Nascimento
Telefone
E-mail
Senha
-->
    <div class="container">
        <h1>Cadastro de Pizzas</h1>
        <form action="processa_usuario.php" method="post">
            <div class="col-4">
                <label for="sabor">Sabor da Pizza</label>
                <input type="text" name="sabor_pizza" id="sabor_pizza" class="form-control">
            </div>
            <div class="col-4">
                <label for="tamanho">Tamanho da Pizza</label>
                <input type="text" name="tamanho_pizza" id="tamanho_pizza" class="form-control">
            </div>
            <div class="col-4">
                <label for="preco">Preço da Pizza</label>
                <input type="text" name="preco_pizza" id="preco_pizza" class="form-control">
            </div>

            <button type="submit" name="enviarDados" class="btn btn-
primary">Cadastrar Pizza</button>

            <a href="index.php" class="btn btn-danger">Cancelar</a>
        </form>
    </div>
</body>

</html>