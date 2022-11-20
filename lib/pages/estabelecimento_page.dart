import 'package:flutter/material.dart';
import 'package:sun_coast/components/estabelecimento_item.dart';
import 'package:sun_coast/models/praia.dart';

import '../data/dummy_data.dart';

class EstabelecimentoPage extends StatelessWidget {
  const EstabelecimentoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final praia = ModalRoute.of(context)?.settings.arguments as Praia;

    return Scaffold(
      appBar: AppBar(
        title: Text(praia.nome),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_ESTABELECIMENTOS.map((estab) {
          return EstabelecimentoItem(estabelecimento: estab);
        }).toList(),
      ),
    );
  }
}
