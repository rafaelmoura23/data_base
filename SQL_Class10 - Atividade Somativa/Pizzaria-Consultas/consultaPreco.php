<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulta Fixa por Preço</title>
  <link rel="stylesheet" href="style/style-sabores.css">
</head>
<body>
  <form method="post" action="">
    <input type="hidden" name="preco_min" value="30">
    <input type="hidden" name="preco_max" value="60">
    <input type="submit" value="Mostrar pizzas entre R$ 30,00 e R$ 60,00">
  </form>

<?php
require_once 'conectaBD.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Obter os valores mínimo e máximo de preço
    $preco_min = filter_input(INPUT_POST, 'preco_min', FILTER_VALIDATE_FLOAT);
    $preco_max = filter_input(INPUT_POST, 'preco_max', FILTER_VALIDATE_FLOAT);


    // QUERY SQL QUE EXECUTA A CONSULTA NO BANCO DE DADOS
    $sql = "SELECT * FROM pizza WHERE preco_pizza >= :preco_min AND preco_pizza <= :preco_max";

    $stmt = $pdo->prepare($sql);

    $dados = array(
        ':preco_min' => $preco_min,
        ':preco_max' => $preco_max,
    );

    $stmt->execute($dados);

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
        echo "<h1>Nenhuma pizza encontrada entre R$ $preco_min e R$ $preco_max!</h1>";
    }
}

?>


</body>
</html>
