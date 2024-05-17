<?php
require_once '../conexao/conectaBD.php';

if (!empty($_POST)) {
  try {
    $sql = "INSERT INTO clientes (nome, sobrenome, endereco, id_cliente, cidade, celular, email, id_pagamento) 
            VALUES (:nome, :sobrenome, :endereco, :id_cliente, :cidade, :celular, :email, :id_pagamento)";

    $stmt = $pdo->prepare($sql);

    $dados = array(
      ':nome' => $_POST['nome'],
      ':sobrenome' => $_POST['sobrenome'],
      ':endereco' => $_POST['endereco'],
      ':id_cliente' => $_POST['id_cliente'],
      ':cidade' => $_POST['cidade'],
      ':celular' => $_POST['celular'],
      ':email' => $_POST['email'],
      ':id_pagamento' => $_POST['id_pagamento']
    );

    if ($stmt->execute($dados)) {
      header("Location: index.php?msgSucesso=Cadastro realizado com sucesso!");
    }
  } catch (PDOException $e) {
    switch ($e->getCode()) {
      case 23502:
        header("Location: index.php?msgErro=Cliente já cadastro!");
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