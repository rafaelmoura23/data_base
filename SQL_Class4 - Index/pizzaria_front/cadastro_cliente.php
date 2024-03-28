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
        $sql = "INSERT INTO cliente (cpf, nome, telefone, endereco) 
        VALUES (:cpf, :nome, :telefone, :endereco)";

        // Preparar a SQL (pdo)
        $stmt = $pdo->prepare($sql);
        // Definir/organizar os dados p/ SQL
        $dados = array(
            ':cpf' => $_POST['cpf'],
            ':nome' => $_POST['nome'],
            ':telefone' => $_POST['telefone'],
            ':endereco' => $_POST['endereco']
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