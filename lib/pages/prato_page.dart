import 'package:flutter/material.dart';
import 'package:sun_coast/data/dummy_data.dart';

// ignore: must_be_immutable
class PratoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final pratoEscolhido;
  const PratoPage({super.key, this.pratoEscolhido});

  @override
  Widget build(BuildContext context) {
    List tabela = DUMMY_PRATOS
        // ignore: unrelated_type_equality_checks
        .where((prato) => (prato.id.contains(pratoEscolhido.toString())))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$pratoEscolhido -- Pratos',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int prato) {
          return ListTile(
            onTap: () => {},
            leading: Image.asset(
              tabela[prato].imagem,
              width: 50,
            ),
            title: Text(' ${tabela[prato].title}'),
            trailing: Text(' ${tabela[prato].descricao}'),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
