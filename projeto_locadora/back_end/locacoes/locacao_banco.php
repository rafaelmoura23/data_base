<?php
session_start();
require_once '../conexao/conectaBD.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data_locacao = $_POST["data_locacao"]; // Supondo que a data de locação seja inserida pelo usuário
    $data_devolucao = $_POST["data_devolucao"]; // Supondo que a data de devolução seja inserida pelo usuário
    $id_carro = $_POST["id_carro"]; // Supondo que o ID do carro esteja sendo passado pelo formulário
    $valor_total = $_POST["valor_total"];
    $id_cliente = $_SESSION["cliente"]["id_cliente"];

    // Preparar e executar a consulta SQL para inserir na tabela locacao
    $sql = "INSERT INTO locacao (data_locacao, data_devolucao, valor_total, id_carro, id_cliente) 
            VALUES (:data_locacao, :data_devolucao, :valor_total, :id_carro, :id_cliente)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(
        ':data_locacao' => $data_locacao,
        ':data_devolucao' => $data_devolucao,
        ':valor_total' => $valor_total,
        ':id_carro' => $id_carro,
        ':id_cliente' => $id_cliente
    ));

    if ($stmt->rowCount() > 0) {
        header("Location: pagina_confirmacao_locacao.php");
        exit();
    } else {
        echo "Erro ao realizar locação.";
    }
}
?>
