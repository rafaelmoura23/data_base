<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulta por Tamanho</title>
  <link rel="stylesheet" href="style/style-sabores.css">
</head>
<body>
  <form method="post" action="">
    <label for="tamanho">Escolha o tamanho da pizza:</label>
    <select id="tamanho" name="tamanho">
      <option value="P">Pequena</option>
      <option value="M">Média</option>
      <option value="G">Grande</option>
    </select>
    <input type="submit" value="Buscar">
  </form>

<?php
require_once 'conectaBD.php';

// Obter o tamanho selecionado
$tamanho = filter_input(INPUT_POST, 'tamanho');

// Montar a SQL
$sql = "SELECT * FROM pizza WHERE tamanho_pizza = :tamanho";

// Preparar a SQL
$stmt = $pdo->prepare($sql);

// Definir/organizar os dados p/ SQL
$dados = array(
    ':tamanho' => $tamanho,
);

// Executar a consulta
$stmt->execute($dados);

// Verificar se encontrou resultados
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
    echo "<h1>Nenhuma pizza encontrada no tamanho $tamanho!</h1>";
}

?>


</body>
</html>
