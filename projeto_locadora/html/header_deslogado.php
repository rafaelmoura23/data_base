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
        <li><a href="http://"><i class="fas fa-solid fa-info"></i> Sobre Nós</a></li>
        <li class="login"><a href="http://localhost:<?php echo $localhost_port; ?>/back_end/login_cliente/login_clientes.php"><i class="fas fa-solid fa-user" style="color: #0b1e3c;"></i> Login</a></li>
        <li class="login"><a href="http://localhost:<?php echo $localhost_port; ?>/back_end\pagina_interna\interna_funcionario.php"><i class="fas fa-solid fa-key" style="color: #0b1e3c;"></i> Login Funcionários</a></li>
    </div>
</nav>

