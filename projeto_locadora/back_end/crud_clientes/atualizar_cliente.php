<?php
session_start();
require_once '../conexao/conectaBD.php';

$id_cliente = $_GET['id_cliente'];

if (!empty($id_cliente)) {
    $sql = "SELECT * FROM clientes WHERE id_cliente = :id_cliente";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':id_cliente', $id_cliente, PDO::PARAM_INT);
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
        <input type="hidden" name="id_cliente" value="<?php echo $cliente['id_cliente']; ?>">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<?php echo $cliente['nome']; ?>">
        <label for="sobrenome">Sobrenome:</label>
        <input type="text" id="sobrenome" name="sobrenome" value="<?php echo $cliente['sobrenome']; ?>">
        <label for="cidade">Cidade:</label>
        <input type="text" id="cidade" name="cidade" value="<?php echo $cliente['cidade']; ?>">
        <label for="celular">Celular:</label>
        <input type="text" id="celular" name="celular" value="<?php echo $cliente['celular']; ?>">
        <button type="submit">Atualizar</button>
    </form>

</body>

</html>
