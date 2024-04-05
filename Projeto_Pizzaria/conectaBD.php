<?php
// endereco
// nome do BD
// usuario
// senha
$endereco = 'localhost';
$banco = 'postgres';
$adm = 'postgres';
$senha = 'postgres';
try {
    $pdo = new PDO(
        "pgsql:host=$endereco;port=5432;dbname=$banco",
        $adm,
        $senha,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );
    echo "Conectado no banco de dados!!!";
    $sql_pizza = "CREATE TABLE IF NOT EXISTS pizza 
    (id_pizza SERIAL, sabor_pizza VARCHAR(255), tamanho_pizza VARCHAR (10), preco_pizza MONEY, descricao_pizza VARCHAR(100))";
    $sql_cliente =  "CREATE TABLE IF NOT EXISTS cliente
    (cpf INT PRIMARY KEY, nome VARCHAR(100), telefone VARCHAR(20), endereco varchar(100))";
    $stmt_pizza = $pdo->prepare($sql_pizza);
    $stmt_cliente = $pdo->prepare($sql_cliente);
    $stmt_pizza->execute();
    $stmt_cliente->execute();
} catch (PDOException $e) {
    echo "Falha ao conectar ao banco de dados. <br/>";
    die($e->getMessage());
}
?>