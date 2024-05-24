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

<h3>Deseja confirmar o Aluguel do 'puxar modelo do carro'?</h3>
<button>Confirmar</button>
<button>Cancelar</button>