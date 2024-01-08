import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioScreen(),
    );
  }
}

class FormularioScreen extends StatelessWidget {
  final List<Widget Function(BuildContext)> buttons = [
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/borecgeo");
          },
          style: ElevatedButton.styleFrom(
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
                'asset/formularios/BoRecGeo.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Boletim de Reconhecimento Geográfico',
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/pcfad"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
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
                'asset/formularios/PCFADResuReco.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'PCFAD Resumo do Reconhecimento', // Substitua pelo texto desejado
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/pcndanti"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
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
                'asset/formularios/PNCDAntivet.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'PCND Registro Diário de Serviço Antivetorial', // Substitua pelo texto desejado
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/formetmo-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // alterar cor do fundo do botão
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/formularios/PNCDVEtemo.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'PNCD - Vigilância Entomológica', // Substitua pelo texto desejado
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

        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
                "/haemagogus-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
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
                'asset/mosquito/haemagogus45.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Haemagogus Febre Amarela', // Substitua pelo texto desejado
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/palha-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
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
                'asset/mosquito/flebotomopallha45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Flebótomo Palha Leishmaniose', // Substitua pelo texto desejado
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

            /*
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/atro-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/mosquito/anophelesAtroparvus45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Anopheles Atroparvus', // Substitua pelo texto desejado
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/quadri-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/mosquito/anophelesQuadrimaculatus45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Anopheles   Quadri-           maculatus', // Substitua pelo texto desejado
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/brumpt-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/mosquito/culexBrumpt45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Culex Brumpt', // Substitua pelo texto desejado
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
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/modestus-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/mosquito/culexModestus45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Culex Modestus', // Substitua pelo texto desejado
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/pipens-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
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
                'asset/mosquito/culexPipens45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Culex Pipens', // Substitua pelo texto desejado
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed("/tritae-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/mosquito/culexTritaeniorhynchus45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Culex Tritaeniorhychus', // Substitua pelo texto desejado
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ],
          ),
        ),
    */

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulários diversos'),
      ),
      body: Container(
        // Define a cor de fundo para o corpo da tela
        color: Colors.lightBlue,
        child: Center(
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
      ),
    );
  }
}
