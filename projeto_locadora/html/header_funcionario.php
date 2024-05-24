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
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/lista_veiculos/listar_veiculos.php"><i class="fas fa-solid fa-car" style="color: #ffffff;"></i> Veículos</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/lista_agencias/listar_agencias.php"><i class="fas fa-solid fa-map"></i> Agências</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>"><i class="fas fa-solid fa-map"></i> Clientes</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>"><i class="fas fa-solid fa-map"></i> Agências</a></li>
        <li><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/lista_locacoes/listar_locacao.php"><i class="fas fa-solid fa-map"></i> Locações</a></li>
    </div>
</nav>