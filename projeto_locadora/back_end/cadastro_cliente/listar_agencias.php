<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agências</title>
    
    <link rel="stylesheet" href="../../css/style-header.css">
</head>

<body>

    <?php include '../../html/header.html';
    require_once '../conexao/conectaBD.php';

    $sql = "SELECT * FROM agencia";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
                <div class="card">
                    <div class="card-header">
                        <h2 id="numero_agencia"><?php echo $row['numero_agencia']; ?></h2>
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

</html>