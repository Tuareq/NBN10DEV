import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LeandroScreen extends StatefulWidget {
  const LeandroScreen({Key? key}) : super(key: key);

  @override
  _LeandroScreenState createState() => _LeandroScreenState();
}

class _LeandroScreenState extends State<LeandroScreen> {
  List<String> itensMenu = ["Deslogar"];

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
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sup.Leandro"),
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
                        "/equipe-screen"); // Navegue para a tela do mapa
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
                    "Equipes CCZ",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        "/cadleandro-screen"); // Navegue para a tela do mapa
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
                    "Cadastro do Supervisor",
                    style: TextStyle(
                        fontSize: 16), // Tamanho da fonte do texto do botão
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
