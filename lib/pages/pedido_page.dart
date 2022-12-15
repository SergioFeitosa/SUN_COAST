import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class PedidoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final item;
  final localPedido;

  const PedidoPage({super.key, this.item , this.localPedido});

  @override
  Widget build(BuildContext context) {
    final tabela =
        DUMMY_PEDIDOS.where((pedido) => (pedido.local == localPedido)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedidos',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.amber,
            child: const ListTile(
              leading: Text(
                'Item',
                style: TextStyle(fontSize: 16),
              ),
              title: Text(
                'Local',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                'Hora',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int pedido) {
                return ListTile(
                  onTap: () => {},
                  leading: Text('  ${tabela[pedido].itens[0]}'),
                  title: Text('  ${tabela[pedido].local}'),
                  trailing: Text('  ${tabela[pedido].horaPedido}'),
                );
              },
              padding: const EdgeInsets.all(16),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: tabela.length,
            ),
          ),
        ],
      ),
    );
  }
}
