<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $cpf = $_POST['cpf'];
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    if (!empty($cpf) && !empty($nome) && !empty($email)) {
        try {
            $sql = "UPDATE login_funcionarios SET nome = :nome, email = :email , senha = :senha WHERE cpf = :cpf";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':cpf', $cpf, PDO::PARAM_INT);
            $stmt->bindParam(':nome', $nome, PDO::PARAM_STR);
            $stmt->bindParam(':email', $email, PDO::PARAM_STR);
            $stmt->bindParam(':senha', $senha, PDO::PARAM_STR);
            

            if ($stmt->execute()) {
                $_SESSION['message'] = "Funcionário atualizado com sucesso!";
                $_SESSION['message_type'] = "success";
            } else {
                $_SESSION['message'] = "Erro ao atualizar funcionario.";
                $_SESSION['message_type'] = "error";
            }
        } catch (PDOException $e) {
            error_log($e->getMessage());
            $_SESSION['message'] = "Erro ao atualizar funcionario.";
            $_SESSION['message_type'] = "error";
        }
    } else {
        $_SESSION['message'] = "Todos os campos são obrigatórios.";
        $_SESSION['message_type'] = "error";
    }
    header("Location: listar_funcionarios.php");
    exit();
}
?>
