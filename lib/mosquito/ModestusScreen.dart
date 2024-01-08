import 'package:flutter/material.dart';

class ModestusScreen extends StatelessWidget {
  const ModestusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culex Modestus'),
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
                    'asset/mosquito/culexModestus160.png',
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
                            'O Culex modestus (sem nome comum) é uma espécie de mosquito hematófagoda família Culicidae . '
                            'Foi demonstrado experimentalmente que é capaz de transmitir o vírus do Nilo Ocidental (WNV), e seu hábito de se '
                            'alimentar agressivamente de aves e humanos confere-lhe um potencial significativo de transmissão de infecções '
                            'zoonóticas de aves para humanos. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Acredita-se que seja o principal vetor-ponte do WNV entre aves e humanos no sul da França e acredita-se que tenha desempenhado '
                            'um papel na transmissão do WNV no delta do Danúbio , nos deltas dos mares Cáspio e Azov e na região do Volga , na Rússia.'
                            ' Também foi implicado na transmissão do vírus Tahyna e do vírus Lednice na França e na Eslováquia, respectivamente',
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
                            'As larvas modestus vivem em água doce a ligeiramente salina em canais de irrigação, pântanos e campos de arroz.'
                            'adulto.As fêmeas modestus se alimentam de sangue de vertebrados, especialmente pássaros, cavalos e humanos; os '
                            'machos se alimentam de néctar.',
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
