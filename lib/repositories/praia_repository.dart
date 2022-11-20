import 'package:sun_coast/models/praia.dart';

class PraiaRepository {
  static List<Praia> tabela = [
    const Praia(
        id: '1',
        imagem: 'assets/images/praias/praia-bessa.jpg',
        nome: 'Bessa',
        temperatura: 27,
        bares: ['1']),
    const Praia(
        id: '2',
        imagem: 'assets/images/praias/praia-cabo-branco.jpg',
        nome: 'Cabo Branco',
        temperatura: 27,
        bares: ['2']),
    const Praia(
        id: '3',
        imagem: 'assets/images/praias/praia-manaira.jpg',
        nome: 'Manaira',
        temperatura: 27,
        bares: ['3']),
    const Praia(
        id: '4',
        imagem: 'assets/images/praias/praia-tambau.jpg',
        nome: 'Tambau',
        temperatura: 27,
        bares: ['4']),
  ];
}
