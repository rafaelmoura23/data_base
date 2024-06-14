<?php
session_start();
require_once '../conexao/conectaBD.php';

$id_carro = $_GET['id_carro'];

if (!empty($id_carro)) {
    $sql = "SELECT * FROM carro WHERE id_carro = :id_carro";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':id_carro', $id_carro, PDO::PARAM_INT);
    $stmt->execute();
    $carro = $stmt->fetch(PDO::FETCH_ASSOC);
} else {
    $_SESSION['message'] = "ID do carro não fornecido.";
    $_SESSION['message_type'] = "error";
    header("Location: listar_carros.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizar Carros</title>
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>

    <h2>Atualizar Carros</h2>
    <form method="POST" action="processa_atualizacao.php">
        <input type="hidden" name="id_carro" value="<?php echo $carro['id_carro']; ?>">
        <label for="modelo">modelo:</label>
        <input type="text" id="modelo" name="modelo" value="<?php echo $carro['modelo']; ?>">
        <label for="tipo">tipo:</label>
        <input type="text" id="tipo" name="tipo" value="<?php echo $carro['tipo']; ?>">
        <label for="placa">placa:</label>
        <input type="text" id="placa" name="placa" value="<?php echo $carro['placa']; ?>">

        <label for="ano">ano:</label>
        <input type="text" id="ano" name="ano" value="<?php echo $carro['ano']; ?>">
        <label for="disponibilidade">disponibilidade:</label>
        <input type="text" id="disponibilidade" name="disponibilidade" value="<?php echo $carro['disponibilidade']; ?>">
        <label for="preco_aluguel">preco_aluguel:</label>
        <input type="text" id="preco_aluguel" name="preco_aluguel" value="<?php echo $carro['preco_aluguel']; ?>">
        <label for="id_agencia">id_agencia:</label>
        <input type="text" id="id_agencia" name="id_agencia" value="<?php echo $carro['id_agencia']; ?>">


        <button type="submit">Atualizar</button>
    </form>

</body>

</html>
