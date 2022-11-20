import 'package:flutter/material.dart';
import 'package:sun_coast/models/cidade.dart';
import 'package:sun_coast/models/praia.dart';
import 'package:sun_coast/utils/app_routes.dart';
import '../data/dummy_data.dart';

class PraiaPage extends StatelessWidget {
  const PraiaPage({super.key});

  void _selectEstabelecimento(BuildContext context, Praia praia) {
    Navigator.of(context).pushNamed(
      AppRoutes.ESTABELECIMENTO,
      arguments: praia,
    );
  }

  @override
  Widget build(BuildContext context) {
    const tabela = DUMMY_PRAIAS;
    final cidade = ModalRoute.of(context)?.settings.arguments as Cidade;

    return Scaffold(
      appBar: AppBar(
        title: Text(cidade.nome),
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
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int praia) {
                return ListTile(
                  onTap: () => _selectEstabelecimento(context, tabela[praia]),
                  leading: Image.asset(
                    tabela[praia].imagem,
                    width: 50,
                  ),
                  title: Text('  ${tabela[praia].nome}'),
                  trailing: Text(tabela[praia].temperatura.toString()),
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
