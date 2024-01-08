import 'package:flutter/material.dart';

class ZikaScreen extends StatelessWidget {
  const ZikaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vírus da Zika'),
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
                    'asset/virus/virusZika160.png',
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
                        text:'O vírus da zica é um vírus do gênero Flavivirus. Em humanos, transmitido através da picada do mosquito Aedes aegypti, '
                                'causa a doença também conhecida como zika. Pode causar microcefalia congênita (quando adquirido por gestante, '
                                 'podendo prejudicar o feto em alguns casos)',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O nome Zika tem sua origem na floresta de Zika, perto de Entebbe, capital da República'
                                ' de Uganda, onde o vírus foi isolado pela primeira vez em 1947. É relacionado aos vírus da dengue, da febre amarela e '
                                'do Nilo Ocidental.',
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
                        text: 'A transmissão do vírus chikungunya (CHIKV) é feita através da picada de insetos-vetores do gênero Aedes, '
                'que em cidades é principalmente pelo Aedes aegypti e em ambientes rurais ou selvagens pode ser por '
                    'Aedes albopictus.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'Sintomas'
                            'Os sintomas da febre Zika são as erupções cutâneas. Nos casos em que há manifestação de sintomas, eles costumam incluir '
                            'dores de cabeça leves, febre baixa, mal estar, dores leves nas articulações, conjuntivite, coceira e exantema maculopapular '
                            'que, no geral, desaparecem espontaneamente após 3 a 7 dias, começando com uma leve dor de cabeça que progrediu para um '
                            'exantema maculopapular, febre e dor nas costas.O tratamento recomendado para os casos sintomáticos é baseado no uso de '
                            'paracetamol ou dipirona para o controle da febre e Não se '
                             'recomenda o uso de ácido acetilsalicílico (AAS) e outros anti-inflamatórios.',
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
