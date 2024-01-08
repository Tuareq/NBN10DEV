import 'package:flutter/material.dart';
import 'package:endemics/rotas.dart';
import 'package:endemics/telas/Home.dart';
import 'package:firebase_core/firebase_core.dart';

final ThemeData temaPadrao = ThemeData(
  primaryColor: const Color(0xffff9000),
  colorScheme:
  ColorScheme.fromSwatch().copyWith(secondary: const Color(0xffff9090)),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: Colors.white,
  ),
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      title: "CCZ - PMF",
      home: const Home(),
      theme: temaPadrao,
      initialRoute: "/",
      onGenerateRoute: Rotas.gerarRotas,
      debugShowCheckedModeBanner: false));

}