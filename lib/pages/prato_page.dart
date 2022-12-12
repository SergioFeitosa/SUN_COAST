import 'package:flutter/material.dart';

class PratoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final pratoEscolhido;
  // ignore: prefer_typing_uninitialized_variables
  const PratoPage({super.key, this.pratoEscolhido});

  @override
  Widget build(BuildContext context) {
    //final bar = ModalRoute.of(context)?.settings.arguments as Bar;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$pratoEscolhido -- Pratos',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: Column(),
    );
  }
}
