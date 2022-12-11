import 'package:flutter/material.dart';

class Pedido {
  final String id;
  final String title;
  final Color color;
  final String imagem;
  final String descricao;

  const Pedido({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.imagem,
    required this.descricao,
  });
}
