<?php
session_start();
require_once '../conexao/conectaBD.php';

$cpf = $_GET['cpf'];

if (!empty($cpf)) {
    $sql = "SELECT * FROM login WHERE cpf = :cpf";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':cpf', $cpf, PDO::PARAM_INT);
    $stmt->execute();
    $cliente = $stmt->fetch(PDO::FETCH_ASSOC);
} else {
    $_SESSION['message'] = "ID do cliente não fornecido.";
    $_SESSION['message_type'] = "error";
    header("Location: listar_clientes.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizar Cliente</title>
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>

    <h2>Atualizar Cliente</h2>
    <form method="POST" action="processa_atualizacao.php">
        <input type="hidden" name="cpf" value="<?php echo $cliente['cpf']; ?>">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<?php echo $cliente['nome']; ?>">
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<?php echo $cliente['email']; ?>">
        <label for="senha">Senha:</label>
        <input type="text" id="senha" name="senha" value="<?php echo $cliente['senha']; ?>">
        <button type="submit">Atualizar</button>
    </form>

</body>

</html>
