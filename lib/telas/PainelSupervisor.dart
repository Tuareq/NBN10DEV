import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PainelSupervisor extends StatefulWidget {
  const PainelSupervisor({Key? key}) : super(key: key);

  @override
  _PainelSupervisorState createState() => _PainelSupervisorState();
}

class _PainelSupervisorState extends State<PainelSupervisor> {
  List<String> itensMenu = ["Mapa", "Formulários", "Deslogar"];

  _deslogarUsuario(BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.signOut();

    // Use o contexto passado como argumento para navegar após a conclusão da operação assíncrona
    Navigator.pushReplacementNamed(context, "/");
  }

  _escolhaMenuItem(String escolha) {
    switch (escolha) {
      case "Deslogar":
        _deslogarUsuario(context); // Passe o contexto como argumento
        break;
      case "Formulários":
        Navigator.of(context).pushNamed("/formulario-screen");
        break;
      case "Mapa":
        // Navegue para a tela mapascreen.dart
        Navigator.of(context).pushNamed("/mapa");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CCZ - SUPERVISOR"),
        backgroundColor: Colors.lightBlue, // Cor de fundo do AppBar
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: _escolhaMenuItem,
            itemBuilder: (context) {
              return itensMenu.map((String item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          ),
        ],
      ),
      backgroundColor: Colors.lightBlue, // Cor de fundo do Scaffold
      body: Stack(
        children: [
          SingleChildScrollView(
            // Envolve a coluna com SingleChildScrollView
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Image.asset(
                        "asset/pmflogo.png",
                        width: 250, // Defina a largura desejada
                        height: 100,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Image.asset(
                        "asset/ccz.png",
                        width: 150, // Defina a largura desejada
                        height: 200, // Defina a altura desejada
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        "/endemia-screen"); // Navegue para a tela do mapa
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo, // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(
                        300, 40), // Largura e altura mínimas do botão
                  ),
                  child: const Text(
                    "Endemias",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        "/mosquito-screen"); // Navegue para a tela do mapa
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo, // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(
                        300, 40), // Largura e altura mínimas do botão
                  ),
                  child: const Text(
                    "Mosquitos",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed("/mapa"); // Navegue para a tela do mapa
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo, // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(
                        300, 40), // Largura e altura mínimas do botão
                  ),
                  child: const Text(
                    "Mapa GPS",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        "/formulario-screen"); // Navegue para a tela do mapa
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo, // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(
                        300, 40), // Largura e altura mínimas do botão
                  ),
                  child: const Text(
                    "Formulários",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        "/equipesupervisao-screen"); // Navegue para a tela do mapa
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo, // Cor de fundo do botão
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(
                        300, 40), // Largura e altura mínimas do botão
                  ),
                  child: const Text(
                    "Supervisores",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                "By NBN10Developer",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
