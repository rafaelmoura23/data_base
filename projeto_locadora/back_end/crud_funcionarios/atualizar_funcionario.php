<?php
session_start();
require_once '../conexao/conectaBD.php';

$cpf = $_GET['cpf'];

if (!empty($cpf)) {
    $sql = "SELECT * FROM login_funcionarios WHERE cpf = :cpf";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':cpf', $cpf, PDO::PARAM_INT);
    $stmt->execute();
    $funcionario = $stmt->fetch(PDO::FETCH_ASSOC);
} else {
    $_SESSION['message'] = "ID do funcionario não fornecido.";
    $_SESSION['message_type'] = "error";
    header("Location: listar_funcionarios.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizar Funcionário</title>
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>

    <h2>Atualizar Funcionário</h2>
    <form method="POST" action="processa_atualizacao.php">
        <input type="hidden" name="cpf" value="<?php echo $funcionario['cpf']; ?>">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="<?php echo $funcionario['nome']; ?>">
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<?php echo $funcionario['email']; ?>">
        <label for="senha">Senha:</label>
        <input type="text" id="senha" name="senha" value="<?php echo $funcionario['senha']; ?>">
        <button type="submit">Atualizar</button>
    </form>

</body>

</html>
