<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Consulta por Tamanho</title>
  <link rel="stylesheet" href="style/style-sabores.css">
</head>
<body>

    <h1>Consulta de Clientes</h1>
    <form action="" method="post">
        <label for="nome">Digite o nome do Cliente:</label>
        <input type="text" id="nome" name="nome">
        <button type="submit">Consultar</button>
    </form>

<?php
require_once 'conectaBD.php';

// Obter o tamanho selecionado
$nome = filter_input(INPUT_POST, 'nome');

// QUERY SQL PARA CONSULTA NO BANCO DE DADOS
$sql = "SELECT * FROM cliente WHERE nome = :nome";

$stmt = $pdo->prepare($sql);

$dados = array(
    ':nome' => $nome,
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
        <h2 id="nome"><?php echo $row['nome']; ?></h2>
      </div>
      <div class="card-body">
        <p id="nome">Nome: <?php echo $row['nome']; ?></p>
        <p id="cpf">CPF: <?php echo $row['cpf']; ?></p>
        <p id="telefone">Telefone: <?php echo $row['telefone']; ?></p>
        <p id="endereco">Endereço: <?php echo $row['endereco']; ?></p>
      </div>
    </div>
    <?php
    }

} else {
    echo "<h1>Nenhum $nome está cadastrado(a)!</h1>";
}

?>


</body>
</html>
