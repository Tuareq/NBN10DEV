import 'package:flutter/material.dart';
import 'package:endemics/model/Usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = "";
  bool _carregando = false;
  String? _tipoUsuario;
  String? get tipoUsuario => _tipoUsuario;

  @override
  void initState() {
    super.initState();
    _inicializarFirebase();
    _verificarUsuarioLogado();
  }

  void _inicializarFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  _validarCampos() {
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty && senha.length >= 7) {
        Usuario usuario = Usuario();
        usuario.email = email;
        usuario.senha = senha;

        _logarUsuario(usuario);
      } else {
        setState(() {
          _mensagemErro = "Preencha a senha! Digite 7 ou mais caracteres.";
        });
      }
    } else {
      setState(() {
        _mensagemErro = "Preencha um e-mail válido com '@' ";
      });
    }
  }

  _logarUsuario(Usuario usuario) async {
    setState(() {
      _carregando = true;
    });

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha,
      );

      _redirecionaPainelPorTipoUsuario(userCredential.user!.uid);
    } catch (error) {
      setState(() {
        _mensagemErro =
            "Erro ao autenticar usuário. Verifique o e-mail e senha e tente novamente!";
      });
    } finally {
      setState(() {
        _carregando = false;
      });
    }
  }

  _redirecionaPainelPorTipoUsuario(String idUsuario) async {
    FirebaseFirestore db = FirebaseFirestore.instance;

    DocumentSnapshot snapshot =
        await db.collection("usuarios").doc(idUsuario).get();

    if (snapshot.exists) {
      Map<String, dynamic>? dados = snapshot.data() as Map<String, dynamic>?;
      if (dados != null && dados.containsKey("tipoUsuario")) {
        String tipoUsuario = dados["tipoUsuario"];
        setState(() {
          _tipoUsuario = tipoUsuario;
        });

        switch (tipoUsuario) {
          case "supervisor":
            Navigator.pushReplacementNamed(context, "/painel-supervisor");
            break;
          case "ace":
            Navigator.pushReplacementNamed(context, "/painel-ace");
            break;
        }
      } else {
        setState(() {
          _mensagemErro =
              "Houve um problema ao recuperar seus dados. Por favor, tente novamente.";
        });
      }
    }
  }

  _verificarUsuarioLogado() async {
    User? usuarioLogado = FirebaseAuth.instance.currentUser;

    if (usuarioLogado != null) {
      String idUsuario = usuarioLogado.uid;
      _redirecionaPainelPorTipoUsuario(idUsuario);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      backgroundColor: Colors.lightBlue, // Cor de fundo do Scaffold
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "asset/pmflogo.png",
                    width: 120,
                    height: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "asset/cczgr.png", // Caminho para o segundo logo
                    width: 160,
                    height: 110,
                  ),
                ),
                TextField(
                  controller: _controllerEmail,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "E-mail",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                TextField(
                  controller: _controllerSenha,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      _validarCampos();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.indigo, // Define a cor do botão em indigo
                    ),
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/recuperar-senha');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.indigo, // Define a cor do botão em indigo
                  ),
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/cadastro");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.indigo, // Define a cor do botão em indigo
                    ),
                    child: GestureDetector(
                      child: const Text(
                        "Não tem conta? Cadastre-se",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
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
                _carregando
                    ? const Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.deepOrangeAccent,
                        ),
                      )
                    : Container(),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      _mensagemErro,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
