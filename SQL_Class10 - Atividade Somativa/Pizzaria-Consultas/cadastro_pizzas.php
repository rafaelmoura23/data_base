<?php
require_once 'conectaBD.php';
// Definir o BD (e a tabela)
// Conectar ao BD (com o PHP)

if (!empty($_POST)) {
    // Está chegando dados por POST e então posso tentar inserir no banco
    // Obter as informações do formulário ($_POST)
    try {
        // Preparar as informações
        // Montar a SQL (pgsql)
        $sql = "INSERT INTO pizza (sabor_pizza, tamanho_pizza, preco_pizza, descricao_pizza) 
        VALUES (:sabor_pizza, :tamanho_pizza, :preco_pizza, :descricao_pizza)";

        // Preparar a SQL (pdo)
        $stmt = $pdo->prepare($sql);
        // Definir/organizar os dados p/ SQL
        $dados = array(
            ':sabor_pizza' => $_POST['sabor_pizza'],
            ':tamanho_pizza' => $_POST['tamanho_pizza'],
            ':preco_pizza' => $_POST['preco_pizza'],
            ':descricao_pizza' => $_POST['descricao_pizza']
        );
        // Tentar Executar a SQL (INSERT)
        // Realizar a inserção das informações no BD (com o PHP)
        if ($stmt->execute($dados)) {
            header("Location: index.php?msgSucesso=Cadastro realizado com sucesso!");
        }
    } catch (PDOException $e) {
        //die($e->getMessage());
        header("Location: index.php?msgErro=Falha ao cadastrar...");
    }
} else {
    header("Location: index.php?msgErro=Erro de acesso.");
}
die();