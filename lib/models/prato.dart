import 'package:flutter/material.dart';

class Prato {
  final String id;
  final String title;
  final Color color;
  final String imagem;

  const Prato({
    required this.id,
    required this.title,
    this.color = Colors.orange,
    required this.imagem,
  });
}
