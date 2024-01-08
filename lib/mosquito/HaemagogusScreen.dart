import 'package:flutter/material.dart';

class HaemagogusScreen extends StatelessWidget {
  const HaemagogusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haemagogus janthinomys'),
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
                    'asset/mosquito/haemagogus140.png', // Substitua pelo caminho correto da sua imagem
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
                            ' Os mosquitos silvestres Haemagogus janthinomys e Haemagogus leucocelaenus foram os principais responsáveis '
                            'pela transmissão de febre amarela nos recentes surtos da doença no Brasil.  - Maíra Menezes (IOC/Fiocruz).'
                            'o trabalho foi publicado na revista científica Emerging Microbes and Infections.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'A conclusão é de uma pesquisa que analisou quase 18 mil insetos entre 2015 e 2018. O amplo levantamento encontrou mosquitos'
                            ' das duas espécies em grande quantidade e infectados em cidades do Rio de Janeiro, Espírito Santo e Minas Gerais que '
                            'apresentavam casos em humanos e em primatas. Análises do genoma dos vírus detectados nesses mosquitos confirmaram a '
                            'presença da mesma linhagem viral identificada em macacos e pacientes. Liderado pelo Instituto Oswaldo Cruz (IOC/Fiocruz),',
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
                            'Considerado o principal transmissor do vírus da Febre Amarela, essa espécie vive em ambientes de mata e '
                            'coloca seus ovos nas paredes de ocos de árvore com água acumulada. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'No ciclo silvestre da febre amarela, os primatas não humanos (macacos) são os principais hospedeiros e amplificadores '
                            'do vírus e os vetores são mosquitos com hábitos estritamente silvestres, sendo os gêneros Haemagogus e Sabethes os mais '
                            'importantes na América Latina. Nesse ciclo, o homem participa como um hospedeiro acidental ao adentrar áreas de mata.'
                            'No ciclo urbano, o homem é o único hospedeiro com importância epidemiológica e a transmissão ocorre a partir de vetores '
                            'urbanos (Aedes aegypti) infectados.A pessoa apresenta os sintomas iniciais da febre amarela de 3 a 6 dias após ter sido infectada.',
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
