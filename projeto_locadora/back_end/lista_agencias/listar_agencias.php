<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agências</title>
    <link rel="stylesheet" href="../../css/style-agencias.css">
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>

    <div class="filtros">
    <form method="GET" action="">
        <label for="cidade">Nome da Cidade:</label>
        <input type="text" id="cidade" name="cidade" value="<?php echo isset($_GET['cidade']) ? $_GET['cidade'] : ''; ?>">
        <button class="btn" type="submit">Filtrar</button>
        <button class="btn" type="button" onclick="limparFiltro()">Limpar Filtros</button>
    </form>
    </div>

    <?php
    require_once '../conexao/conectaBD.php';

    $cidade = isset($_GET['cidade']) ? $_GET['cidade'] : '';

    if ($cidade != '') {
        $sql = "SELECT * FROM agencia WHERE cidade LIKE :cidade";
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':cidade', '%' . $cidade . '%');
    } else {
        $sql = "SELECT * FROM agencia";
        $stmt = $pdo->prepare($sql);
    }

    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
            <div class="card">
                <div class="card-header">
                    <h2 id="numero_agencia">Agência N° <?php echo $row['numero_agencia']; ?></h2>
                </div>
                <div class="card-body">
                    <p id="cidade">Cidade: <?php echo $row['cidade']; ?></p>
                    <p id="endereco">Endereço: <?php echo $row['endereco']; ?></p>
                    <p id="contato">Contato: <?php echo $row['contato']; ?></p>
                </div>
            </div>
    <?php
        }
    } else {
        echo "<h1>Nenhuma agencia encontrada!</h1>";
    }
    ?>

</body>

<script>
        function limparFiltro() {
            document.getElementById('cidade').value = '';
            window.location.href = window.location.pathname;
        }
    </script>

</html>
