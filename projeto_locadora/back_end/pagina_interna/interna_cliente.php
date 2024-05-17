<?php
session_start();

if (!isset($_SESSION["cliente"])) {
    // Redirecionar para a página de login
    header("Location: ../pagina_login/login_cliente.php");
    exit(); // Certifique-se de sair do script após redirecionar
}

$cliente = $_SESSION["cliente"];
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Interna</title>
</head>

<body>
    <h1>Bem-vindo, <?php echo $cliente['cpf']; ?>!</h1>
    <p>Esta é a página interna apenas para clientes logados.</p>
    <a href="./logout.php">Sair</a>
</body>

</html>