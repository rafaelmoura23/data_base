<form action="search.php" method="post">
        <label for="sabor">Digite o nome do cliente:</label>
        <input type="text" id="searched" name="searched">
        <button type="submit">Consultar</button>

        <!-- <label for="sabor">Digite o Sabor da pizza:</label>
        <input type="text" id="searched_pizza" name="searched_pizza">
        <button type="submit">Consultar</button> -->
    </form>

<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();

$nome = filter_input(INPUT_POST, 'searched');
$sabor = filter_input(INPUT_POST, 'searched_pizza');

$sql_name = "SELECT * FROM contatos WHERE nome LIKE :nome";
$sql_sabor = "SELECT * FROM contatos WHERE pizza LIKE :pizza";

$stmt_name = $pdo->prepare($sql_name);
$stmt_sabor = $pdo->prepare($sql_sabor);

$dados_name = array(
    ':nome' => "%$nome%",
);

$dados_pizza = array(
    ':pizza' => "%$pizza%",
);

$stmt_name->execute($dados_name);
$stmt_pizza->execute($dados_pizza);

if ($stmt->rowCount() > 0) {
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>

<table>
    <div class="card">
            <div class="card-header">
                <h2 id="nome"><?php echo $row['nome']; ?></h2>
            </div>
            <div class="card-body">
                <p id="nome">Nome: <?php echo $row['nome']; ?></p>
                <p id="pizza">Pizza: <?php echo $row['pizza']; ?></p>
                <p id="cadastro">Data: <?php echo $row['cadastro']; ?></p>
            </div>
        </div>
<?php
    }
}
?>