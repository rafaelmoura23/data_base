<!DOCTYPE html>
<link rel="stylesheet" href="../../css/style_confirmacao.css">
<html>

<head>
    <title>Confirmação de Locação</title>
</head>

<body>
    <h1>Confirmação de Locação</h1>
    <table>
        <tr>
            <th>Data de Locação</th>
            <th>Data de Devolução</th>
            <th>Id de Registro da Locação</th>
            <th>Id Carro</th>
            <th>Valor Total</th>
            <th>Id Cliente</th>
        </tr>
        <tr>
            <td><?php echo $_GET["data_locacao"]; ?></td>
            <td><?php echo $_GET["data_devolucao"]; ?></td>
            <td><?php echo $_GET["id_locacao"]; ?></td>
            <td><?php echo $_GET["id_carro"]; ?></td>
            <td><?php echo $_GET["valor_total"]; ?></td>
            <td><?php echo $_GET["id_cliente"]; ?></td>
        </tr>
    </table>

    <h2>Painel de Pagamento</h2>

<form id="formPagamento">
    <div class="grupo-campos">
        <label for="metodoPagamento">Método de Pagamento:</label>
        <select id="metodoPagamento" name="metodoPagamento">
            <option value="cartao">Cartão de Crédito</option>
            <option value="boleto">Boleto Bancário</option>
            </select>
    </div>

    <div class="grupo-campos">
        <label for="numeroCartao">Número do Cartão:</label>
        <input type="text" id="numeroCartao" name="numeroCartao" placeholder="0000 0000 0000 0000" maxlength="16">
    </div>

    <div class="grupo-campos">
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" placeholder="123" maxlength="3">
    </div>

    <div class="grupo-campos">
        <label for="nomeTitular">Nome do Titular:</label>
        <input type="text" id="nomeTitular" name="nomeTitular" placeholder="João da Silva">
    </div>

    <div class="grupo-campos">
        <label for="cpfTitular">CPF do Titular:</label>
        <input type="text" id="cpfTitular" name="cpfTitular" placeholder="000.000.000-00">
    </div>

    <button type="button" id="confirmarBtn" onclick="confirmarLocacao()">Confirmar Pagamento</button>
    <button type="button" id="cancelarBtn" onclick="cancelar()">Cancelar</button>
</form>
</div>
</body>
<script type="text/javascript">
        function confirmarLocacao() {
            var dataLocacao = "<?php echo $_GET['data_locacao']; ?>";
            var dataDevolucao = "<?php echo $_GET['data_devolucao']; ?>";
            var idLocacao = "<?php echo $_GET['id_locacao']; ?>";
            var idCarro = "<?php echo $_GET['id_carro']; ?>";
            var valorTotal = "<?php echo $_GET['valor_total']; ?>";
            var idCliente = "<?php echo $_GET['id_cliente']; ?>";

            // Calcular o número de dias que o veículo ficará alugado
            var date1 = new Date(dataLocacao);
            var date2 = new Date(dataDevolucao);
            var timeDiff = Math.abs(date2.getTime() - date1.getTime());
            var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));

            // Exibir a mensagem de confirmação
            alert("O carro de ID " + idCarro + " foi alugado por " + diffDays + " dias entre " + dataLocacao + " e " + dataDevolucao + ".\nValor total: " + valorTotal + "\nID da Locação: " + idLocacao + "\nID do Cliente: " + idCliente);
            setTimeout(function() {
                window.location.href = 'locacao_forms.php';
            }, 2000);
        }
        function cancelar() {
            window.location.href = 'locacao_forms.php';
        }
    </script>
</html>