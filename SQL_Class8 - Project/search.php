<?php
include 'functions.php';
$pdo = pdo_connect_pgsql();
$nome = filter_input(INPUT_POST, 'searched');

$sql = "SELECT * FROM contatos WHERE nome LIKE :nome";

$stmt = $pdo->prepare($sql);

$dados = array(
    ':nome' => "%$nome%",
);

$stmt->execute($dados);

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