<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try{
    $data_locacao = $_POST["data_locacao"];
    $data_devolucao = $_POST["data_devolucao"];
    $id_locacao = $_POST["id_locacao"];
    $id_carro = $_POST["id_carro"];
    $valor_total = $_POST["valor_total"];
    $id_cliente = $_POST["id_cliente"];
    // $id_cliente = $_SESSION["cliente"]["id_cliente"];


    $sql = "INSERT INTO locacao (data_locacao, data_devolucao, id_locacao, valor_total, id_carro, id_cliente) 
            VALUES (:data_locacao, :data_devolucao, :id_locacao,  :valor_total, :id_carro, :id_cliente)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':data_locacao' => $data_locacao,
        ':data_devolucao' => $data_devolucao,
        ':id_locacao' => $id_locacao,
        ':valor_total' => $valor_total,
        ':id_carro' => $id_carro,
        ':id_cliente' => $id_cliente
    ));
} catch (PDOException $e) {
        error_log($e->getMessage(), 3, "log_erros.txt");
        header("Location: index.php?msgErro=Falha ao locar...");
    }

    if ($stmt->rowCount() > 0) {
        header("Location: confirmacao_.php");
        exit();
    } else {
        echo "Erro ao realizar locação.";
    }
}
?>
