import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AceScreen(),
    );
  }
}

class PasswordDialog extends StatefulWidget {
  final String correctPassword;

  PasswordDialog({required this.correctPassword});

  @override
  _PasswordDialogState createState() => _PasswordDialogState();
}

class _PasswordDialogState extends State<PasswordDialog> {
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordCorrect = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Digite a senha do agente de endemias'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Senha',
              errorText: _isPasswordCorrect ? null : 'Senha incorreta',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop(false); // Senha incorreta, fecha o diálogo
          },
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            final enteredPassword = _passwordController.text;
            final correctPassword = widget.correctPassword;

            if (enteredPassword == correctPassword) {
              Navigator.of(context).pop(true); // Senha correta, fecha o diálogo
            } else {
              setState(() {
                _isPasswordCorrect = false; // Senha incorreta, exibe erro
              });
            }
          },
          child: const Text('Confirmar'),
        ),
      ],
    );
  }
}

class AceScreen extends StatelessWidget {
  final List<Widget Function(BuildContext)> buttons = [

        (BuildContext context) =>

        ElevatedButton(                                                 // Botão melhor equipe
          onPressed: () async {
            final bool isPasswordCorrect = await showDialog(
              context: context,
              builder: (context) {
                return PasswordDialog(
                    correctPassword:
                    '12345');                                       // Substitua pela senha cadastrada
              },
            );

            if (isPasswordCorrect == true) {
              Navigator.of(context).pushNamed("/nbn-screen");
            }

          },
          style:

          ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/fotos/nbn160.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Narciso',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ],
          ),
        ),

        (BuildContext context) =>

        ElevatedButton(                                                   //Botão equipe sul
          onPressed: () async {
            final bool isPasswordCorrect = await showDialog(
              context: context,
              builder: (context) {
                return PasswordDialog(
                    correctPassword:
                    'qwert');                                       // Substitua pela senha cadastrada
              },
            );

            if (isPasswordCorrect == true) {
              Navigator.of(context).pushNamed("/diogo-screen");
            }

          },
          style:

          ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/fotos/diogo160.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Diogo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ],
          ),
        ),

        (BuildContext context) =>

        ElevatedButton(                                                   //Botão equipe coloninha
          onPressed: () async {
            final bool isPasswordCorrect = await showDialog(
              context: context,
              builder: (context) {
                return PasswordDialog(
                    correctPassword:
                    '67890');                                       // Substitua pela senha cadastrada
              },
            );

            if (isPasswordCorrect == true) {
              Navigator.of(context).pushNamed("/iracema-screen");
            }

          },
          style:

          ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/logoequipes/coloninha160.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Iracema',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ],
          ),
        ),

        (BuildContext context) =>

        ElevatedButton(                                                   //Botão equipe norte
          onPressed: () async {
            final bool isPasswordCorrect = await showDialog(
              context: context,
              builder: (context) {
                return PasswordDialog(
                    correctPassword:
                    '12345');                                       // Substitua pela senha cadastrada
              },
            );

            if (isPasswordCorrect == true) {
              Navigator.of(context).pushNamed("/mauricio-screen");
            }

          },
          style:

          ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/logoequipes/norte160.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Mauricio',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
              ),
            ],
          ),
        ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACEs'),
      ),
      backgroundColor: Colors.lightBlue, // Defina a cor de fundo aqui
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
            ),
            itemCount: buttons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: buttons[index](context),
              );
            },
          ),
        ),
      ),
    );
  }
}
