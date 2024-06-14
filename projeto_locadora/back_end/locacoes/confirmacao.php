<!DOCTYPE html>
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

    <h3>Deseja confirmar o Aluguel do carro?</h3>
    <button id="confirmarBtn" onclick="confirmarLocacao()">Confirmar</button>
    <button id="cancelarBtn" onclick="cancelar()">Cancelar</button>
</body>
<script type="text/javascript">
        function confirmarLocacao() {
            // Capturar os valores dos campos
            var dataLocacao = "<?php echo $_GET['data_locacao']; ?>";
            var dataDevolucao = "<?php echo $_GET['data_devolucao']; ?>";
            var idLocacao = "<?php echo $_GET['id_locacao']; ?>";
            var idCarro = "<?php echo $_GET['id_carro']; ?>";
            var valorTotal = "<?php echo $_GET['valor_total']; ?>";
            var idCliente = "<?php echo $_GET['id_cliente']; ?>";

            // Calcular o número de dias entre as datas
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