import 'package:flutter/material.dart';

class PratoPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final namePage;

  const PratoPage({super.key, this.namePage});

  @override
  Widget build(BuildContext context) {
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
            child: Text('$namePage'),
          ),
        ],
      ),
    );
  }
}
