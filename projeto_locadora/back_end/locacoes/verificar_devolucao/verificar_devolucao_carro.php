<?php

function verificarDevolucaoCarro($pdo) {
    // Obter a data atual
    $dataAtual = date('Y-m-d');

    // Consulta para selecionar todas as locações com data de devolução igual à data atual
    $sql = "SELECT id_carro FROM locacao WHERE data_devolucao = :dataAtual";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(':dataAtual' => $dataAtual));
    $carros_devolucao = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Atualizar o status de disponibilidade dos carros devolvidos
    foreach ($carros_devolucao as $carro) {
        $idCarro = $carro['id_carro'];
        $sqlUpdate = "UPDATE carro SET disponibilidade = 'disponível' WHERE id_carro = :idCarro";
        $stmtUpdate = $pdo->prepare($sqlUpdate);
        $stmtUpdate->execute(array(':idCarro' => $idCarro));
    }
}
?>
