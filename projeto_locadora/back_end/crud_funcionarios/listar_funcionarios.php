<?php
session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Funcionários</title>
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

    $sql = "SELECT * FROM login_funcionarios";
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
                    <p id="cpf">cpf: <?php echo $row['cpf']; ?></p>
                    <p id="email">email: <?php echo $row['email']; ?></p>
                    <form method="POST" action="deletar_funcionario.php">
                        <input type="hidden" name="cpf" value="<?php echo $row['cpf']; ?>">
                        <button type="submit">Deletar</button>
                    </form>
                    <form method="GET" action="atualizar_funcionario.php">
                        <input type="hidden" name="cpf" value="<?php echo $row['cpf']; ?>">
                        <button type="submit">Atualizar</button>
                    </form>
                </div>
            </div>
    <?php
        }
    } else {
        echo "<h1>Nenhum funcionario encontrado!</h1>";
    }
    ?>
    
</body>
<script src="../crud_clientes/script.js"></script>
</html>
