<?php
session_start();
$_SESSION = array();

session_destroy();

header("Location: ../login_cliente/login_clientes.php");
exit();

?>
