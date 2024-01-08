import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

  @override
  _RecuperarSenhaState createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  final TextEditingController _controllerEmail = TextEditingController();
  String _mensagem = "";
  bool _enviandoEmail = false;
  Color _mensagemCor =
      Colors.yellowAccent; // Adicione esta linha para definir a cor

  _enviarEmail() {
    String email = _controllerEmail.text;

    if (email.isNotEmpty && email.contains("@")) {
      setState(() {
        _enviandoEmail = true;
      });

      FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) {
        setState(() {
          _mensagem =
              "E-mail de recuperação de senha enviado. Verifique sua caixa de entrada.";
          _mensagemCor = Colors.yellowAccent; // Defina a cor da mensagem
          _enviandoEmail = false;
        });
      }).catchError((error) {
        setState(() {
          _mensagem =
              "Erro ao enviar o e-mail de recuperação de senha. Verifique o e-mail digitado e tente novamente.";
          _mensagemCor = Colors.yellowAccent; // Defina a cor da mensagem
          _enviandoEmail = false;
        });
      });
    } else {
      setState(() {
        _mensagem = "Digite um endereço de e-mail válido.";
        _mensagemCor = Colors.yellowAccent; // Defina a cor da mensagem
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar Senha"),
      ),
      backgroundColor: Colors.lightBlue, // Cor de fundo do Scaffold
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Image.asset(
                "asset/ccz.png", // Caminho para o arquivo de imagem do logo
                width: 260,
                height: 110,
              ),
            ),
            SizedBox(
              width: 300, // Largura desejada para a caixa de email e o botão
              child: Column(
                children: [
                  SizedBox(
                    width:
                        double.infinity, // Largura máxima para a caixa de email
                    child: TextField(
                      controller: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "E-mail",
                        fillColor:
                            Colors.white, // Cor de fundo da caixa de email
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height:
                          16), // Espaçamento entre a caixa de email e o botão
                  SizedBox(
                    width: double.infinity, // Largura máxima para o botão
                    child: ElevatedButton(
                      onPressed: () {
                        _enviarEmail();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo, // Cor de fundo do botão
                      ),
                      child: const Text(
                        "Enviar E-mail de Recuperação",
                        style: TextStyle(
                            color: Colors.white), // Cor do texto do botão
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16), // Espaçamento abaixo do botão
            if (_enviandoEmail)
              const CupertinoActivityIndicator()
            else
              Center(
                child: Text(
                  _mensagem,
                  style: const TextStyle(
                      color: Colors.yellowAccent), // Cor do texto da mensagem
                ),
              ),
          ],
        ),
      ),
    );
  }
}
