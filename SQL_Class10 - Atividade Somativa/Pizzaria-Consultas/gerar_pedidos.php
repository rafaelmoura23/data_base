<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pedidos - PitiZzaria</title>
  <link rel="stylesheet" href="style/style-pedidos.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<body>
<?php include 'html/header.html'; ?>
  <main>
    <div class="container">
      <form action="confirmar_pedido.php" method="post">
      <h2>Faça seu pedido</h2>
        <label for="cliente">Cliente:</label>
        <input type="text" id="cliente" name="cliente" placeholder="Nome completo" required>

        <label for="telefone">Telefone:</label>
        <input type="tel" id="telefone" name="telefone" placeholder="(xx) xxxx-xxxx" required>

        <label for="pizza">Pizza:</label>
        <select id="pizza" name="pizza" required>
          <option value="">Selecione uma pizza</option>
          <option value="calabresa">Calabresa</option>
          <option value="marguerita">Marguerita</option>
          <option value="quatro_queijos">Quatro Queijos</option>
          <option value="frango_com_catupiry">Frango com Catupiry</option>
        </select>
        <button type="submit">Enviar pedido</button>
      </form>
    </div>
  </main>
  <?php include 'html/footer.html'; ?>
</body>
</html>
