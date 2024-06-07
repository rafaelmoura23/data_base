<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes</title>
    <link rel="stylesheet" href="../../css/style-agencias.css">
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>

    <?php
    require_once '../conexao/conectaBD.php';

    $sql = "SELECT * FROM clientes";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
            <div class="card">
                <div class="card-header">
                    <h2 id="nome"><?php echo $row['nome']; ?></h2>
                </div>
                <div class="card-body">
                    <p id="sobrenome">Sobrenome: <?php echo $row['sobrenome']; ?></p>
                    <p id="cidade">Cidade: <?php echo $row['cidade']; ?></p>
                    <p id="celular">Celular: <?php echo $row['celular']; ?></p>
                </div>
            </div>
    <?php
        }
    } else {
        echo "<h1>Nenhum Cliente encontrado!</h1>";
    }

    ?>


</body>

</html>