import 'package:flutter/material.dart';
import 'package:sun_coast/pages/estado_page.dart';
import 'package:sun_coast/pages/cidade_page.dart';
import 'package:sun_coast/pages/praia_bar_page.dart';
import 'package:sun_coast/pages/praia_page.dart';
import 'package:sun_coast/pages/bar_page.dart';
import 'package:sun_coast/pages/categoria_page.dart';
import 'package:sun_coast/pages/prato_page.dart';
import 'package:sun_coast/pages/tipo_estabelecimento_page.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const SunCoastApp());
}

class SunCoastApp extends StatelessWidget {
  const SunCoastApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 12,
                fontFamily: 'RobotCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (context) => const EstadoPage(),
        AppRoutes.ESTADO: (context) => const EstadoPage(),
        AppRoutes.CIDADE: (context) => const CidadePage(),
        AppRoutes.PRAIA: (context) => const PraiaPage(),
        AppRoutes.PRAIABAR: (context) => const PraiaBarPage(),
        AppRoutes.TIPOESTABELECIMENTO: (context) =>
            const TipoEstabelecimentoPage(),
        AppRoutes.BAR: (context) => const BarPage(),
        AppRoutes.CATEGORIA: (context) => const CategoriaPage(),
        AppRoutes.PRATO: (context) => const PratoPage(),
      },
    );
  }
}
