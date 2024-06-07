<?php
require_once '../conexao/conectaBD.php';

if (!empty($_POST)) {
  try {
    $sql = "INSERT INTO login (cpf, nome, email, senha) 
            VALUES (:cpf, :nome, :email, :senha)";

    $stmt = $pdo->prepare($sql);

    $dados = array(
      ':cpf' => $_POST['cpf'],
      ':nome' => $_POST['nome'],
      ':email' => $_POST['email'],
      ':senha' => password_hash($_POST['senha'], PASSWORD_DEFAULT)
    );

    if ($stmt->execute($dados)) {
      header("Location: login_clientes.php?msgSucesso=Cadastro realizado com sucesso!");
    }
  } catch (PDOException $e) {
    switch ($e->getCode()) {
      case 23502:
        header("Location: index.php?msgErro=CPF já cadastrado.");
        break;
      default:
        error_log($e->getMessage(), 3, "log_erros.txt");
        header("Location: index.php?msgErro=Falha ao cadastrar...");
    }
  }
} else {
  header("Location: index.php?msgErro=Erro de acesso.");
}
die();
?>