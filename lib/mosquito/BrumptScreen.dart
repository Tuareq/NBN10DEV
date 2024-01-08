import 'package:flutter/material.dart';

class BrumptScreen extends StatelessWidget {
  const BrumptScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culex Brumpt'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
// Imagem com borda arredondada
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Raio dos cantos
                  border: Border.all(color: Colors.grey),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(10.0), // Raio dos cantos da imagem
                  child: Image.asset(
                    'asset/mosquito/culexBrumpt160.png',
                    // Substitua pelo caminho correto da sua imagem
                    width: 160,
                    height: 160,
                    fit: BoxFit
                        .cover, // Preencher o container mantendo a proporção
                  ),
                ),
              ),

              const SizedBox(height: 16.0),

// Caixa de texto 1
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: RichText(
                  textAlign: TextAlign.justify, // Alinha o texto justificado
                  text: const TextSpan(
                    style: TextStyle(fontSize: 9.0, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Outro gênero com importância médica dentro dos mosquitos é Culex, que possui várias espécies que são vetores de '
                            'doenças importantes, como diferentes tipos de encefalite, vírus do Nilo Ocidental, filariose e malária aviária. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Os membros deste gênero variam de 4 a 10 mm, por isso são considerados pequenos a médios. Têm uma distribuição '
                            'cosmopolita, com cerca de 768 espécies identificadas, embora a maior gravidade dos casos seja registrada na África, '
                            'Ásia e América do Sul.',
                        style:
                            TextStyle(fontStyle: FontStyle.italic), // Itálico
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),

// Caixa de texto 2
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: RichText(
                  textAlign: TextAlign.justify, // Alinha o texto justificado
                  text: const TextSpan(
                    style: TextStyle(fontSize: 9.0, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            'Alguns exemplos do gênero Culex são:Culex modestus/Culex pipiens/Culex quinquefasciatus/Culex tritaeniorhynchus/Culex brumpt/'
                            'Tipos de mosquitos por país e/ou região Alguns tipos de mosquitos têm uma distribuição bastante ampla, enquanto outros se localizam de '
                            'maneira particular em determinados países. Vamos ver alguns casos:',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Brasil:- Aqui vamos destacar as espécies de mosquitos que transmitem doenças no país: Aedes aegypti - transmite Dengue, '
                            'Zika e ChikungunyaAedes albopictus - transmite Dengue e Febre AmarelaCulex quinquefasciatus - transmite Zika, Elefantíase '
                            'e Febre do Nilo OcidentalHaemagogus e Sabethes - transmitem Febre AmarelaAnopheles - é vetor do protozoário Plasmodium, '
                            'capaz de causar MaláriaFlebótomo - transmite a Leishmaniose',
                        style:
                            TextStyle(fontStyle: FontStyle.italic), // Itálico
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),

// Botão "Voltar"
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: const Text(
                  "Voltar",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
