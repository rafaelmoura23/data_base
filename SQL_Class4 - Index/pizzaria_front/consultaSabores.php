<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Exemplo</title>
  <link rel="stylesheet" href="style/style-sabores.css">
</head>
<body>
  
<?php
require_once 'conectaBD.php';

// Obter o sabor digitado no campo
$sabor = filter_input(INPUT_POST, 'sabor');

// Montar a SQL (pgsql)
$sql = "SELECT * FROM pizza WHERE sabor_pizza LIKE :sabor_pizza";

// Preparar a SQL (pdo)
$stmt = $pdo->prepare($sql);

// Definir/organizar os dados p/ SQL
$dados = array(
    ':sabor_pizza' => "%$sabor%",
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
        <h2><?php echo $row['sabor_pizza']; ?></h2>
      </div>
      <div class="card-body">
        <p>Tamanho: <?php echo $row['tamanho_pizza']; ?></p>
        <p>Preço: <?php echo $row['preco_pizza']; ?></p>
        <p>Descrição: <?php echo $row['descricao_pizza']; ?></p>
      </div>
    </div>
    <?php
    }

} else {
    echo "<h1>Pizza $sabor não existe no cadastro!</h1>";
}

?>


</body>
</html>




