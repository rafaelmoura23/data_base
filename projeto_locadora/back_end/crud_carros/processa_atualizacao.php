<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_carro = $_POST['id_carro'];
    $modelo = $_POST['modelo'];
    $tipo = $_POST['tipo'];
    $placa = $_POST['placa'];
    $ano = $_POST['ano'];
    $disponibilidade = $_POST['disponibilidade'];
    $preco_aluguel = $_POST['preco_aluguel'];
    $id_agencia = $_POST['id_agencia'];

    if (!empty($modelo) && !empty($tipo) && !empty($placa) && !empty($ano) && !empty($disponibilidade) && !empty($preco_aluguel) && !empty($id_agencia)) {
        try {
            $sql = "UPDATE carro SET modelo = :modelo, tipo = :tipo , placa = :placa , ano = :ano , disponibilidade = :disponibilidade, preco_aluguel = :preco_aluguel, id_agencia = :id_agencia WHERE id_carro = :id_carro";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':id_carro', $id_carro, PDO::PARAM_INT);
            $stmt->bindParam(':modelo', $modelo, PDO::PARAM_STR);
            $stmt->bindParam(':tipo', $tipo, PDO::PARAM_STR);
            $stmt->bindParam(':placa', $placa, PDO::PARAM_STR);
            $stmt->bindParam(':ano', $ano, PDO::PARAM_STR);
            $stmt->bindParam(':disponibilidade', $disponibilidade, PDO::PARAM_STR);
            $stmt->bindParam(':preco_aluguel', $preco_aluguel, PDO::PARAM_STR);
            $stmt->bindParam(':id_agencia', $id_agencia, PDO::PARAM_STR);

            if ($stmt->execute()) {
                $_SESSION['message'] = "Carro atualizado com sucesso!";
                $_SESSION['message_type'] = "success";
            } else {
                $_SESSION['message'] = "Erro ao atualizar Carro.";
                $_SESSION['message_type'] = "error";
            }
        } catch (PDOException $e) {
            error_log($e->getMessage());
            $_SESSION['message'] = "Erro ao atualizar Carro.";
            $_SESSION['message_type'] = "error";
        }
    } else {
        $_SESSION['message'] = "Todos os campos são obrigatórios.";
        $_SESSION['message_type'] = "error";
    }
    header("Location: listar_carros.php");
    exit();
}
?>
