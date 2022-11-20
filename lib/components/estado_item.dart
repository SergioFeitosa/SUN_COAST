import 'package:flutter/material.dart';
import 'package:sun_coast/models/estado.dart';

class EstadoItem extends StatelessWidget {
  final Estado estado;

  const EstadoItem({super.key, required this.estado});

  @override
  Widget build(BuildContext context) {
    return Text(estado.nome);
  }
}
