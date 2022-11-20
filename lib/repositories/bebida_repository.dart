import 'package:sun_coast/models/bebida.dart';

class BebidaRepository {
  static List<Bebida> tabela = [
    const Bebida(
        id: '1',
        imagem: 'assets/images/praias/praia-bessa.jpg',
        nome: 'Cerveja'),
       
    const Bebida(
        id: '2',
        imagem: 'assets/images/praias/praia-cabo-branco.jpg',
        nome: 'Batida'),
    const Bebida(
        id: '3',
        imagem: 'assets/images/praias/praia-cabo-branco.jpg',
        nome: 'Caipirinha'),
    const Bebida(
        id: '4',
        imagem: 'assets/images/praias/praia-cabo-branco.jpg',
        nome: 'Vodka'),
  ];
}
