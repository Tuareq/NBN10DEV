import 'package:flutter/material.dart';
import 'package:endemics/model/Usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerMatricula = TextEditingController();
  bool _tipoUsuario = false;
  String _mensagemErro = "";

  _validarCampos() {
    // Recuperar dados dos campos
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
    String matricula = _controllerMatricula.text;

    // Validar campos
    if (nome.isNotEmpty) {
      if (email.isNotEmpty && email.contains("@")) {
        if (senha.isNotEmpty && senha.length > 6) {
          Usuario usuario = Usuario();
          usuario.nome = nome;
          usuario.email = email;
          usuario.senha = senha;
          usuario.matricula = matricula;
          usuario.tipoUsuario = usuario.verificaTipoUsuario(_tipoUsuario);
          _cadastrarUsuario(usuario);
        } else {
          setState(() {
            _mensagemErro = "Preencha a senha! digite 7 ou mais caracteres";
          });
        }
      } else {
        setState(() {
          _mensagemErro = "Preencha o E-mail válido";
        });
      }
    } else {
      setState(() {
        _mensagemErro = "Preencha o Nome";
      });
    }
  }

  _cadastrarUsuario(Usuario usuario) {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((firebaseUser) {
      db
          .collection("usuarios")
          .doc(firebaseUser.user?.uid)
          .set(usuario.toMap());

      // Redireciona para o painel, de acordo com o tipoUsuario
      switch (usuario.tipoUsuario) {
        case "supervisor":
          Navigator.pushNamedAndRemoveUntil(
              context, "/painel-supervisor", (_) => false);
          break;
        case "ace":
          Navigator.pushNamedAndRemoveUntil(
              context, "/painel-ace", (_) => false);
          break;
      }
    }).catchError((error) {
      if (error is FirebaseAuthException &&
          error.code == 'email-already-in-use') {
        setState(() {
          _mensagemErro = 'O endereço de e-mail já está em uso.';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Colors.lightBlue, // Alteração na cor do fundo
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      "asset/ccz.png",
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      _mensagemErro,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 14),                     // Alteração na cor do texto de erro
                    ),
                    TextField(
                      controller: _controllerMatricula,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                        const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Nº de Matricula",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),

                    TextField(
                      controller: _controllerNome,
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "Nome completo",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),

                    TextField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "e-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),

                    TextField(
                      controller: _controllerSenha,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "senha",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: <Widget>[
                          const Text(
                            "ACE",
                            style: TextStyle(
                                color: Colors
                                    .yellowAccent), // Alteração na cor do texto
                          ),
                          Switch(
                            value: _tipoUsuario,
                            onChanged: (bool valor) {
                              setState(() {
                                _tipoUsuario = valor;
                              });
                            },
                            activeColor: Colors.white,
                            inactiveThumbColor: Colors
                                .yellowAccent, // Alteração na cor do switch
                          ),
                          const Text(
                            "SUPERVISOR",
                            style: TextStyle(
                                color:
                                    Colors.white), // Alteração na cor do texto
                          ),
                        ],
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
                              Colors.indigo, // Alteração na cor do botão
                        ),
                        child: const Text("Cadastrar"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
