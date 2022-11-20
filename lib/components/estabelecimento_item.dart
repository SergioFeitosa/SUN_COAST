import 'package:flutter/material.dart';
import 'package:sun_coast/models/estabelecimento.dart';

class EstabelecimentoItem extends StatelessWidget {
  final Estabelecimento estabelecimento;

  const EstabelecimentoItem({super.key, required this.estabelecimento});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              estabelecimento.color.withOpacity(0.5),
              estabelecimento.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Text(estabelecimento.title),
    );
  }
}
