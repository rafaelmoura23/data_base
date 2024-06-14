<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        $data_locacao = $_POST["data_locacao"];
        $data_devolucao = $_POST["data_devolucao"];
        // $id_locacao = $_POST["id_locacao"];
        $id_carro = $_POST["id_carro"];
        $valor_total = $_POST["valor_total"];
        $id_cliente = $_POST["id_cliente"];
        $_SESSION["cliente"];


        $sql = "INSERT INTO locacao (data_locacao, data_devolucao, valor_total, id_carro, id_cliente) 
            VALUES (:data_locacao, :data_devolucao, :valor_total, :id_carro, :id_cliente)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute(array(
            ':data_locacao' => $data_locacao,
            ':data_devolucao' => $data_devolucao,
            // ':id_locacao' => $id_locacao,
            ':valor_total' => $valor_total,
            ':id_carro' => $id_carro,
            ':id_cliente' => $id_cliente
        ));

        // setar o carro como indisponível na tabela de carros
        $sql_update_carro = "UPDATE carro SET disponibilidade = 'Indisponível' WHERE id_carro = :id_carro";
        $stmt_update_carro = $pdo->prepare($sql_update_carro);
        $stmt_update_carro->execute(array(':id_carro' => $id_carro));
    } catch (PDOException $e) {
        error_log($e->getMessage(), 3, "log_erros.txt");
        header("Location: index.php?msgErro=Falha ao locar...");
    }

    if ($stmt->rowCount() > 0) {
        header("Location: confirmacao.php?" . http_build_query($_POST));
        exit();
    } else {
        echo "Erro ao realizar locação.";
    }
}
