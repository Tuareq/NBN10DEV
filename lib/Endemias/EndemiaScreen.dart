import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EndemiaScreen(),
    );
  }
}

class EndemiaScreen extends StatelessWidget {
  final List<Widget Function(BuildContext)> buttons = [
    (BuildContext context) => ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/dengue-screen");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusDengue45.png',
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Dengue   Arbovírus',
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
                .pushNamed("/zika-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusZika45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Zika    Flavivírus', // Substitua pelo texto desejado
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
            Navigator.of(context).pushNamed(
                "/chikungunya-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusChicungunha45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Chicungunha   Arbovírus', // Substitua pelo texto desejado
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
                .pushNamed("/amarela-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusFebreamarela45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Febre Amarela', // Substitua pelo texto desejado
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
                .pushNamed("/sarna-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/acaroSarna45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Acaro Sarna  Escabiose', // Substitua pelo texto desejado
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
                .pushNamed("/bruce-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacBrucelose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Brucelose', // Substitua pelo texto desejado
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
                .pushNamed("/negra-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacBubonica45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Peste Bubonica - Peste Negra', // Substitua pelo texto desejado
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
                .pushNamed("/erips-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacEripsela45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Eripsela', // Substitua pelo texto desejado
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
                .pushNamed("/lepto-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacLeptospirose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Leptospirose', // Substitua pelo texto desejado
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
                .pushNamed("/salmonela-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacSalmonela45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Salmonela', // Substitua pelo texto desejado
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
                .pushNamed("/tifo-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacTifo45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Tifo', // Substitua pelo texto desejado
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
                .pushNamed("/tuber-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/bacTuberculose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Tuberculose', // Substitua pelo texto desejado
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
                .pushNamed("/ciste-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/cisticercose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Cisticercose', // Substitua pelo texto desejado
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
                .pushNamed("/cripto-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/criptococose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Criptococose', // Substitua pelo texto desejado
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
                .pushNamed("/dipili-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/dipilidiose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Dipilidiose', // Substitua pelo texto desejado
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
                .pushNamed("/esquis-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/esquistossomose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Esquistossomose', // Substitua pelo texto desejado
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
                .pushNamed("/hidi-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/hidatiose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Hidatiose', // Substitua pelo texto desejado
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
                .pushNamed("/histo-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/histoplasmose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Histoplasmose', // Substitua pelo texto desejado
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
                .pushNamed("/psita-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/psitacose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Psitacose', // Substitua pelo texto desejado
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
                .pushNamed("/tenia-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/tenia45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Taenia    Solitária', // Substitua pelo texto desejado
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
                .pushNamed("/toxo-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/toxoplasmose45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Toxoplasmose', // Substitua pelo texto desejado
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
                .pushNamed("/hepa-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusHepatiteB45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Hepatite', // Substitua pelo texto desejado
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
                .pushNamed("/leish-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusLeish45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Leishmaniose', // Substitua pelo texto desejado
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
                .pushNamed("/raiva-screen"); // Substitua pela rota desejada
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white60,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(45, 45),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/virus/virusRaiva45.png', // Substitua pelo caminho da imagem desejada
                fit: BoxFit.contain,
                width: 45,
                height: 45,
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Raiva - Hidrofobia  Lyssavirus ', // Substitua pelo texto desejado
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
        title: const Text('Endemias'),
      ),
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
