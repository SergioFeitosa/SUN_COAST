import 'package:flutter/material.dart';
import 'package:sun_coast/data/dummy_data.dart';
import 'package:sun_coast/models/bar.dart';
import 'package:sun_coast/models/pedido.dart';
import 'package:sun_coast/models/prato.dart';
import 'package:sun_coast/utils/app_routes.dart';

class PratoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final namePage;

  const PratoPage({super.key, this.namePage});

  void _selectPedido(BuildContext context, Prato prato) {
    Navigator.of(context).pushNamed(
      AppRoutes.PEDIDO,
      arguments: prato,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bar = ModalRoute.of(context)?.settings.arguments as Bar;

    final tabela = DUMMY_PRATOS
        .where((prato) => bar.pratosRegionais.contains(prato.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prato -- Regional',
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
                'Imagem',
                style: TextStyle(fontSize: 16),
              ),
              title: Text(
                'Nome',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Text(
                'Temperatura',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int prato) {
                return ListTile(
                  onTap: () => _selectPedido(context, tabela[prato]),
                  leading: Image.asset(
                    tabela[prato].imagem,
                    width: 50,
                  ),
                  title: Text('  ${tabela[prato].title}'),
                  trailing: Text(tabela[prato].descricao.toString()),
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
