import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NbnScreen extends StatefulWidget {
  const NbnScreen({Key? key}) : super(key: key);

  @override
  _NbnScreenState createState() => _NbnScreenState();
}

class _NbnScreenState extends State<NbnScreen> {
  List<String> itensMenu = ["Cadastro", "Deslogar"];

  // Crie uma referência ao banco de dados Firestore
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Crie uma lista para armazenar os dados recuperados
  List<Map<String, dynamic>> dadosRelatorios = [];

  @override
  void initState() {
    super.initState();
    _obterDadosRelatorios();
  }

  // Obtenha os dados dos relatórios do dia
  void _obterDadosRelatorios() async {
    CollectionReference collectionReference = firestore.collection("PNCD-ARM");

    // Obtenha todos os documentos da coleção
    QuerySnapshot querySnapshot = await collectionReference.get();

    // Limpe a lista antes de adicionar novos dados
    dadosRelatorios.clear();

    // Iterar sobre os documentos e adicionar os dados à lista
    for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
      Map<String, dynamic>? dadosRelatorio;

      // Verifique se o documento existe
      if (documentSnapshot.exists) {
        dadosRelatorio = documentSnapshot.data() as Map<String, dynamic>;
      } else {
        dadosRelatorio = Map<String, dynamic>();
      }

      // Verifique se o valor do campo 'data' não é nulo
      if (dadosRelatorio["data"] != null) {
        // Converta o valor do campo 'data' para um tipo `String`
        dadosRelatorio["data"] = dadosRelatorio["data"].toString();
      }

      // Adicione os dados do documento à lista
      dadosRelatorios.add(dadosRelatorio);
    }

    // Atualizar o estado da tela
    setState(() {});
  }

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
      case "Cadastro":
        Navigator.of(context).pushNamed("/cadnbn-screen");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ACE Narciso"),
        backgroundColor: Colors.lightBlue,
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
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 10)),
                Image.asset(
                  "asset/ccz.png",
                  width: 150,
                  height: 200,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                )
              ],
            ),
          ),
          // Exibe os dados dos relatórios do dia
          Expanded(
            child: ListView.builder(
              itemCount: dadosRelatorios.length,
              itemBuilder: (context, index) {
                // Obtenha os dados do relatório atual
                Map<String, dynamic> dadosRelatorio = dadosRelatorios[index];

                // Exibe os dados do relatório em um widget
                return ListTile(
                // title: Text(dadosRelatorio["nome"].toString()),
                //  subtitle: Text(dadosRelatorio["valor"].toString()),
                  // Adicione um botão para visualizar o relatório completo
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Navegue para a tela de visualização do relatório
                      Navigator.pushNamed(context, "/visualizar-relatorio",
                          arguments: dadosRelatorio);
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200, 50),
                    ),
                   child: const Icon(Icons.add_circle),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/formulario-screen");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: const Size(240, 35),
            ),
            child: const Text(
              "Narciso - Relatórios do dia",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/cadnbn-screen");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              minimumSize: const Size(200, 35),
            ),
            child: const Text(
              "Cadastro Narciso",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
