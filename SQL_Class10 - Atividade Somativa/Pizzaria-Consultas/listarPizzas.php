<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Pizzas</title>
    <link rel="stylesheet" href="style/style-sabores.css">
</head>

<body>
    <form method="post" action="">
        <input type="submit" value="Mostrar todas as pizzas">
    </form>

    <?php
    require_once 'conectaBD.php';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // QUERY SQL PARA "CONSULTA" GET NO BANCO DE DADOS
        $sql = "SELECT * FROM pizza";

        $stmt = $pdo->prepare($sql);

        $stmt->execute();

        if ($stmt->rowCount() > 0) {

            // Exibir os resultados em uma tabela
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
                <div class="card">
                    <div class="card-header">
                        <h2 id="sabor"><?php echo $row['sabor_pizza']; ?></h2>
                    </div>
                    <div class="card-body">
                        <p id="tamanho">Tamanho: <?php echo $row['tamanho_pizza']; ?></p>
                        <p id="preco">Preço: <?php echo $row['preco_pizza']; ?></p>
                        <p id="descricao">Descrição: <?php echo $row['descricao_pizza']; ?></p>
                    </div>
                </div>
    <?php
            }
        } else {
            echo "<h1>Nenhuma pizza cadastrada!</h1>";
        }
    }

    ?>


</body>

</html>