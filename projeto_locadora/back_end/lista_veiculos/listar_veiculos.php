<?php
require_once '../conexao/conectaBD.php';

$sql = "SELECT c.modelo, c.tipo, c.ano, c.disponibilidade, c.preco_aluguel, a.cidade AS nome_agencia
        FROM carro c
        INNER JOIN agencia a ON c.id_agencia = a.numero_agencia";

$stmt = $pdo->prepare($sql);
$stmt->execute();

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Veículos</title>
    <link rel="stylesheet" href="../../css/style-veiculos.css">
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>


    <div class="filtros">
        <h3>Filtros  <i class="fas fa-solid fa-filter"></i></h3>
        
        <a href="http://">Modelo</a>
        <input type="Pesquisar" id="modelo">
        <a href="http://">Agência</a>
        <input type="Pesquisar" id="agencia">
        <a href="http://">Ano</a>
        <input type="Pesquisar" id="ano">
        <a href="http://">Preço</a>
        <input type="Pesquisar" id="preco">

        
    </div>

    <?php
    if ($stmt->rowCount() > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
            <div class="card">
                <div class="card-header">
                    <h2 id="modelo"><?php echo $row['modelo']; ?></h2>
                </div>
                <div class="card-body">
                    <p id="tipo">Marca: <?php echo $row['tipo']; ?></p>
                    <p id="ano">Ano: <?php echo $row['ano']; ?></p>
                    <p id="disponiblidade">Disponibilidade: <?php echo $row['disponibilidade']; ?></p>
                    <p id="preco_aluguel">Preço: <?php echo $row['preco_aluguel']; ?></p>
                    <p id="id_agencia">Agências: <?php echo $row['nome_agencia']; ?></p>


                    <a href="../login_cliente/login_clientes.php" id="btnAlugar">Alugar</a>
                </div>
            </div>
    <?php
        }
    } else {
        echo "<h1>Nenhum veículo encontrado!</h1>";
    }

    ?>


</body>

</html>