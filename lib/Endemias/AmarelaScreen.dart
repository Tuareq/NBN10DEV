import 'package:flutter/material.dart';

class AmarelaScreen extends StatelessWidget {
  const AmarelaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vírus da Febre Amarela'),
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
                    'asset/virus/virusFebreamarela160.png',
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
                        'A febre amarela é uma doença hemorrágica viral aguda. O nome “amarela" refere-se à icterícia que afeta alguns pacientes.'
                            'O vírus da febre amarela é um arbovírus do gênero flavivírus e é transmitido por mosquitos pertencentes às espécies '
                            'Aedes e Haemagogus. ',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A febre amarela é transmitida por mosquitos a pessoas não vacinadas em áreas de mata. A vacinação está disponível nos '
                            'postos de saúde de todo o país e é recomendada para pessoas que habitam ou visitam áreas com risco da doença. '
                            'Uma dose apenas garante imunidade por toda a vida.',
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
                        text: 'Febre amarela silvestre (ou selvática): nas florestas tropicais, os macacos, que são o principal reservatório da febre '
                            'amarela, são picados por mosquitos selvagens que passam o vírus para outros macacos. Ocasionalmente, os seres humanos '
                            'que trabalham ou que viajam para a floresta são picados por mosquitos infectados e desenvolvem a doença.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'Febre amarela urbana: grandes epidemias ocorrem quando pessoas infectadas introduzem o vírus em áreas densamente '
                            'povoadas com grande presença de mosquitos e onde a maioria das pessoas tem pouca ou nenhuma imunidade devido à '
                            'falta de vacinação. Uma pessoa não transmite a doença diretamente para outra; o macaco também não transmite a doença. '
                            'É imprescindível a presença de mosquitos infectados agindo como vetores para que haja transmissão.' ,
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
