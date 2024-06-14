<?php
session_start();

if (!isset($_SESSION["cliente"])) {
    // Redirecionar para a página de login
    header("Location: ../pagina_login/login_cliente.php");
    exit(); // Certifique-se de sair do script após redirecionar
}

$cliente = $_SESSION["cliente"];
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Realizar Locação</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../../css/style_locacao.css">
</head>

<?php include '../../html/header_cliente.php'; ?>

<body>
    <h1>Realizar Locação</h1>
    <h1>Bem-vindo, <?php echo $cliente['nome']; ?>!</h1>
    <form method="POST" action="locacao_banco.php">
        <label for="data_locacao">Data de Locação:</label>
        <input type="date" id="data_locacao" name="data_locacao" required><br>

        <label for="data_devolucao">Data de Devolução:</label>
        <input type="date" id="data_devolucao" name="data_devolucao" required><br>

        <label for="id_carro">ID do Carro:</label>
        <select id="id_carro" name="id_carro" required>
            <option value="">Selecione um carro</option>
            <?php
            require_once '../conexao/conectaBD.php';
            $sql = "SELECT id_carro, modelo, disponibilidade FROM carro WHERE disponibilidade = 'Disponível'";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            // loop para selecionar todos os carros da tabela e inserir em uma combo-box
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<option value='" . $row['id_carro'] . "'>" . $row['modelo'] . "</option>";
            }
            ?>
        </select>

        <label for="valor_total">Valor Total:</label>
        <input type="text" id="valor_total" name="valor_total" required><br>

        <input type="text" id="id_cliente" name="id_cliente" value="<?php echo $cliente['cpf']; ?>" hidden>

        <button type="submit">Locar Carro</button>
    </form>
</body>

</html>