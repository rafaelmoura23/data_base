<?php
$localhost_port = $_SERVER['SERVER_PORT'];
?>

<link rel="stylesheet" href="../css/style-header.css">
<link rel="stylesheet" href="../../css/style-header.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">


<nav class="navBar">
    <img src="../../img/logo2-removebg-preview.png" alt="logo" class="logo">
    <div class="lis">
        <li><a href="/home"><i class="fas fa-solid fa-home" style="color: #ffffff;"></i> Home</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/crud_funcionarios/listar_funcionarios.php"><i class="fas fa-solid fa-map"></i> Funcionários</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/crud_clientes/listar_clientes.php"><i class="fas fa-solid fa-map"></i> Clientes</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/crud_carros/listar_carros.php"><i class="fas fa-solid fa-map"></i> Carros</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end\locacoes\locacao_forms.php"><i class="fas fa-solid fa-map"></i> Locações </a></li>
    </div>
</nav>