<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realizar Locação</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../../css/style_locacao.css">
</head>

<?php include '../../html/header_cliente.php'; ?>

<body>
    <h1>Realizar Locação</h1>
    <form method="POST" action="locacao_banco.php"> 
        <label for="data_locacao">Data de Locação:</label>
        <input type="date" id="data_locacao" name="data_locacao" required><br>

        <label for="data_devolucao">Data de Devolução:</label>
        <input type="date" id="data_devolucao" name="data_devolucao" required><br>

        <!-- <label for="id_locacao">Id de Registro da Locação:</label>
        <input type="number" id="id_locacao" name="id_locacao" required><br> -->



        <label for="id_carro">ID do Carro:</label>
        <select id="id_carro" name="id_carro" required>
            <option value="">Selecione um carro</option>
            <?php
            require_once '../conexao/conectaBD.php';
            $sql = "SELECT id_carro, modelo FROM carro";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            // loop para selecionar todos os carros da tabela e inserir em uma combo-box
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<option value='" . $row['id_carro'] . "'>" . $row['modelo'] . "</option>";
            }
            ?>
        </select><br>

        <label for="valor_total">Valor Total:</label>
        <input type="text" id="valor_total" name="valor_total" required><br>


        <label for="id_cliente">ID do Cliente:</label>
        <select id="id_cliente" name="id_cliente" required>
            <option value="">Selecione um carro</option>
            <?php
            require_once '../conexao/conectaBD.php';
            $sql = "SELECT id_cliente, nome, sobrenome FROM clientes";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            // loop para selecionar todos os carros da tabela e inserir em uma combo-box
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<option value='" . $row['id_cliente'] . "'>" . $row['nome'] . " " . $row['sobrenome'] . "</option>";
            }
            ?>
        </select><br>

        <!-- <label for="id_cliente">Id Cliente:</label>
        <input type="number" id="id_cliente" name="id_cliente" required><br> -->

        <button type="submit">Locar Carro</button>
    </form>
</body>

</html>

