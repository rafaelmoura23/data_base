<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Carros </title>
    <link rel="stylesheet" href="../../css/style-agencias.css">
</head>

<body>
    <?php include '../../html/header_deslogado.php'; ?>

    <?php if (isset($_SESSION['message'])): ?>
        <div class="notification <?php echo $_SESSION['message_type']; ?>">
            <?php
            echo $_SESSION['message'];
            unset($_SESSION['message']);
            unset($_SESSION['message_type']);
            ?>
        </div>
    <?php endif; ?>

    <?php
    require_once '../conexao/conectaBD.php';

    $sql = "SELECT * FROM carro";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    ?>
            <div class="card">
                <div class="card-header">
                    <h2 id="modelo"><?php echo $row['modelo']; ?></h2>
                </div>
                <div class="card-body">
                    <p id="tipo">tipo: <?php echo $row['tipo']; ?></p>
                    <p id="ano">ano: <?php echo $row['ano']; ?></p>
                    <p id="placa">placa: <?php echo $row['placa']; ?></p>
                    <form method="POST" action="deletar_carro.php">
                        <input type="hidden" name="id_carro" value="<?php echo $row['id_carro']; ?>">
                        <button type="submit">Deletar</button>
                    </form>
                    <form method="GET" action="atualizar_carro.php">
                        <input type="hidden" name="id_carro" value="<?php echo $row['id_carro']; ?>">
                        <button type="submit">Atualizar</button>
                    </form>
                </div>
            </div>
    <?php
        }
    } else {
        echo "<h1>Nenhum Carro encontrado!</h1>";
    }
    ?>
    
</body>
<script src="../crud_carros/script.js"></script>
</html>
