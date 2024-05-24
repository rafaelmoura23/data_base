<?php
session_start();

if (!isset($_SESSION["funcionarios"])) {
    // Redirecionar para a página de login
    header("Location: ../pagina_login/login_funcionarios.php");
    exit(); // Certifique-se de sair do script após redirecionar
}

$funcionarios = $_SESSION["funcionarios"];
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Interna</title>
</head>

<?php include '../../html/header_funcionarios.php'; ?>

<body>
    <h1>Bem-vindo, <?php echo $funcionarios['nome']; ?>!</h1>
    <p>Esta é a página interna apenas para funcionarioss logados.</p>
    <a href="../locacoes/locacao_forms.php">Locação</a>


    <a href="./logout.php">Sair</a>
</body>

</html>