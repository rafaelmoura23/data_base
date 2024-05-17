<?php
// endereco
// nome do BD
// usuario
// senha
$endereco = 'localhost';
$banco = 'locadora_carros';
$adm = 'postgres';
$senha = 'postgres';
try {
    $pdo = new PDO(
        "pgsql:host=$endereco;port=5432;dbname=$banco",
        $adm,
        $senha,
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    );
} catch (PDOException $e) {
    echo "Falha ao conectar ao banco de dados. <br/>";
    die($e->getMessage());
}
?>