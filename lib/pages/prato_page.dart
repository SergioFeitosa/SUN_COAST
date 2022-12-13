import 'package:flutter/material.dart';
import 'package:sun_coast/data/dummy_data.dart';
import 'package:sun_coast/models/prato.dart';

// ignore: must_be_immutable
class PratoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final pratoEscolhido;

  const PratoPage({super.key, this.pratoEscolhido});

  @override
  Widget build(BuildContext context) {
    List<Prato> tabela = DUMMY_PRATOS
        // ignore: unrelated_type_equality_checks
        .where((prato) => (prato.id.contains((pratoEscolhido + 1).toString())))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          tabela[0].title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                tabela[0].imagem,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              tabela[0].title,
              style: TextStyle(
                color: Colors.grey.shade700,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Descrição',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].descricao,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Preço',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].preco.toString(),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Tempo de Preparo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].tempoPreparo,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Ingredientes',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].ingredientes[0],
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                'Modo de Preparo',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: Text(
                tabela[0].modoPreparo,
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}
