<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_carro = $_POST['id_carro'];

    if (!empty($id_carro)) {
        try {
            $sql = "DELETE FROM carro WHERE id_carro = :id_carro";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':id_carro', $id_carro, PDO::PARAM_INT);

            if ($stmt->execute()) {
                $_SESSION['message'] = "Carro deletado com sucesso!";
                $_SESSION['message_type'] = "success";
            } else {
                $_SESSION['message'] = "Erro ao deletar Carro.";
                $_SESSION['message_type'] = "error";
            }
        } catch (PDOException $e) {
            error_log($e->getMessage());
            $_SESSION['message'] = "Erro ao deletar Carro.";
            $_SESSION['message_type'] = "error";
        }
    } else {
        $_SESSION['message'] = "ID do Carro não fornecido.";
        $_SESSION['message_type'] = "error";
    }
    header("Location: listar_carros.php");
    exit();
}
?>
