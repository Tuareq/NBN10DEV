import 'package:flutter/material.dart';

class SalmonelaScreen extends StatelessWidget {
  const SalmonelaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salmonela'),
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
                    'asset/virus/bacSalmonela160.png',
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
                        text:'Salmonella (Salmonellose) é uma bactéria da família das Enterobacteriaceae que causa intoxicação alimentar e em '
                  'casos raros, pode provocar graves infecções e até mesmo a morte. É uma bactéria que possui duas espécies causadoras de '
                  'doenças em humanos: S. enterica e S. bongori.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'A transmissão se dá com a ingestão de alimentos contaminados com fezes de animais a bactéria é encontrada '
                            'normalmente em animais como galinhas, porcos, répteis, anfíbios, vacas e até mesmo em animais domésticos, como '
                            'cachorros e gatos. Dessa forma, qualquer alimento que venha messes animais ou que tenha entrado em contato com suas fezes '
                            'podem ser consideradas vias de transmissão da Salmonella (Salmonellose).',
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
                        text: 'A Salmonella pode causar dois tipos de doença, dependendo do sorotipo: salmonelose não tifóide e febre tifoide.'
                            'Os sintomas da salmonelose não tifóide podem ser bastante desagradáveis, mas a doença geralmente é autolimitada '
                            'entre pessoas saudáveis (embora possa levar à morte em alguns casos).',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'Os principais sinais e sintomas da infecção por Salmonella (salmonelose não tifoide) são: Diarreia; Vômitos; '
                            'Febre moderada; Dor abdominal; Mal estar geral; Cansaço; Perda de apetite; Calafrios. Esses sintomas podem surgir '
                            'entre 6 e 72 horas (usualmente entre 12 e 36 horas) após o consumo do alimento contaminado e costumam permanecer '
                            'por cerca de 2 a 7 dias, até a completa recuperação do paciente. O contato com alguns animais infectados '
                            '(incluindo animais de estimação) também pode transmitir a doença, se logo depois as mãos não forem lavadas. '
                            'Os sintomas também variam de intensidade de acordo com a quantidade de alimento contaminado ingerido e o '
                            'nível de contaminação do alimento.',
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
