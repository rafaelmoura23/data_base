<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $cpf = $_POST["cpf"];
    $senha = $_POST["senha"];

    $sql = "SELECT * FROM login WHERE cpf = :cpf";
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':cpf', $cpf);
    $stmt->execute();
    $cliente = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($cliente && password_verify($senha, $cliente['senha'])) {
        $_SESSION["cliente"] = $cliente;
        header("Location: ../pagina_interna/interna_cliente.php");
        exit();
    } else {
        $erro = "CPF ou senha incorretos.";
    }
}
?>


<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>

<body>

<div class="container_login">
    <div class="titulo">
        
        <h1>Login</h1>
        <?php if (isset($erro)) : ?>
        <p><?php echo $erro; ?></p>
    <?php endif; ?>
    </div>
    <form method="POST">
        <label for="cpf">CPF:</label>
        <input type="text" id="cpf" name="cpf" required><br>
        <label for="senha">Senha:</label>
        <input type="password" id="senha" name="senha" required><br>
        <button type="submit">Entrar</button>

        <a href="../login_cliente/cliente_acesso.php">Não tem uma Conta?Cadastre-se já!</a>
    </form>
</div>

</body>
</html>
