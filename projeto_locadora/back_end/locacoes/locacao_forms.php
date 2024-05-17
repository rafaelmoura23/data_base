<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realizar Locação</title>
    <link rel="stylesheet" href="style.css">
</head>

<?php include '../../html/header.html'; ?>

<body>
    <h1>Realizar Locação</h1>
    <form method="POST" action="locacao_banco.php"> 
        <label for="data_locacao">Data de Locação:</label>
        <input type="date" id="data_locacao" name="data_locacao" required><br>

        <label for="data_devolucao">Data de Devolução:</label>
        <input type="date" id="data_devolucao" name="data_devolucao" required><br>

        <label for="id_carro">ID do Carro:</label>
        <select id="id_carro" name="id_carro" required>
            <option value="">Selecione um carro</option>
            <?php
            // Inclua o arquivo de conexão com o banco de dados
            require_once '../conexao/conectaBD.php';

            // Query para selecionar todos os carros da tabela carro
            $sql = "SELECT id_carro, modelo FROM carro";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();

            // Loop através dos resultados e exibição como opções da lista suspensa
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<option value='" . $row['id_carro'] . "'>" . $row['modelo'] . "</option>";
            }
            ?>
        </select><br>

        <label for="valor_total">Valor Total:</label>
        <input type="text" id="valor_total" name="valor_total" required><br>

        <button type="submit">Locar Carro</button>
    </form>
</body>

</html>

