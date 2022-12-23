import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class PedidoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final telefone;

  const PedidoPage({super.key, this.telefone});

  @override
  Widget build(BuildContext context) {
    final tabelaPedido = DUMMY_PEDIDOS
        .where((pedido) => (pedido.telefone.contains(telefone)))
        .toList();

    double total = 0.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedidos',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Text(
              'Item',
              style: TextStyle(fontSize: 16),
            ),
            title: Text(
              'Local',
              style: TextStyle(fontSize: 16),
            ),
            trailing: Text(
              'Preço',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.separated(
              // ignore: unnecessary_null_comparison
              itemCount: tabelaPedido == null ? 0 : tabelaPedido.length,
              itemBuilder: (BuildContext context, int pedidoidx) {
                final tabelaPrato = DUMMY_PRATOS
                    .where((prato) =>
                        (tabelaPedido[pedidoidx].itens.contains(prato.id)))
                    .toList();

                List<Widget> widgtes = [];

                for (int index = 0;
                    index < tabelaPedido[pedidoidx].itens.length;
                    index++) {
                  ///
                  total += tabelaPrato[index].preco;

                  ///just to print out
                  widgtes.add(ListTile(
                    onTap: () => {},
                    leading: Text('  ${tabelaPrato[index].title}'),
                    title: Text('  ${tabelaPedido[pedidoidx].local}'),
                    trailing: Text('  $total'),
                  ));
                }
                return Column(
                  children: widgtes,
                );
              },
              padding: const EdgeInsets.all(16),
              separatorBuilder: (_, __) => const Divider(),
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'Valor total $total',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
