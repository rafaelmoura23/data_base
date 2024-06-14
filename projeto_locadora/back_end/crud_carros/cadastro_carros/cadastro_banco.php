<?php
require_once '../../conexao/conectaBD.php';

if (!empty($_POST)) {
  try {
    $sql = "INSERT INTO carro (ano, modelo, id_carro, placa, tipo, disponibilidade, id_agencia, preco_aluguel) 
            VALUES (:ano, :modelo, :id_carro, :placa, :tipo, :disponibilidade, :id_agencia, :preco_aluguel)";

    $stmt = $pdo->prepare($sql);

    $dados = array(
      ':ano' => $_POST['ano'],
      ':modelo' => $_POST['modelo'],
      ':id_carro' => $_POST['id_carro'],
      ':placa' => $_POST['placa'],
      ':tipo' => $_POST['tipo'],
      ':disponibilidade' => $_POST['disponibilidade'],
      ':id_agencia' => $_POST['id_agencia'],
      ':preco_aluguel' => $_POST['preco_aluguel']
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
        header("Location: cadastro_forms.php?msgErro=Falha ao cadastrar...");
    }
  }
} else {
  header("Location: index.php?msgErro=Erro de acesso.");
}
die();