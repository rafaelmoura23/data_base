<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_cliente = $_POST['id_cliente'];

    if (!empty($id_cliente)) {
        try {
            $sql = "DELETE FROM clientes WHERE id_cliente = :id_cliente";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':id_cliente', $id_cliente, PDO::PARAM_INT);

            if ($stmt->execute()) {
                $_SESSION['message'] = "Cliente deletado com sucesso!";
                $_SESSION['message_type'] = "success";
            } else {
                $_SESSION['message'] = "Erro ao deletar cliente.";
                $_SESSION['message_type'] = "error";
            }
        } catch (PDOException $e) {
            error_log($e->getMessage());
            $_SESSION['message'] = "Erro ao deletar cliente.";
            $_SESSION['message_type'] = "error";
        }
    } else {
        $_SESSION['message'] = "ID do cliente não fornecido.";
        $_SESSION['message_type'] = "error";
    }
    header("Location: listar_clientes.php");
    exit();
}
?>
