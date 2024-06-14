<?php
require_once '../conexao/conectaBD.php';

$sql = "SELECT locacao.*, carro.modelo AS nome_carro, clientes.nome AS nome_cliente
        FROM locacao
        JOIN carro ON locacao.id_carro = carro.id_carro
        JOIN clienteS ON locacao.id_cliente = clientes.id_cliente;";

$stmt = $pdo->prepare($sql);
$stmt->execute();

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Locações</title>
    <link rel="stylesheet" href="../../css/style-locacoes.css">
</head>

<body>
    <?php include '../../html/header_funcionario.php'; ?>
    <div class="card">
        <div class="card-body">
            <table class="styled-table">
                <tbody>
                    <tr>
                        <th>Carro</th>
                        <th>Placa</th>
                        <th>Cliente</th>
                        <th>Data de Locação</th>
                        <th>Data de Devolução</th>
                        <th>Valor Total</th>
                        <th>Registro Locação</th>
                    </tr>
                    <?php
                    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                    ?>
                        <tr>
                            <td><?php echo $row['nome_carro']; ?></td>
                            <td><?php echo $row['placa']; ?></td>
                            <td><?php echo $row['nome_cliente']; ?></td>
                            <td><?php echo $row['data_locacao']; ?></td>
                            <td><?php echo $row['data_devolucao']; ?></td>
                            <td><?php echo $row['valor_total']; ?></td>
                            <td><?php echo $row['id_locacao']; ?></td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>


</body>

</html>