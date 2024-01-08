import 'package:flutter/material.dart';

class DengueScreen extends StatelessWidget {
  const DengueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vírus da Dengue'),
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
                    'asset/virus/virusDengue115.png',
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
                        'É uma doença infecciosa febril aguda, que pode se apresentar de forma benigna ou grave, dependendo de alguns '
                  'fatores, entre eles: o vírus envolvido, infecção anterior pelo vírus da dengue e fatores individuais como doenças'
                  ' crônicas (diabetes, asma brônquica, anemia falciforme).',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'Como se transmite?'
                            'A doença é transmitida pela picada da fêmea do mosquito Aedes aegypti.Não há transmissão pelo contato direto com um doente'
                            ' ou suas secreções,nem por meio de fontes de água ou alimento. Qual o microrganismo envolvido? O vírus do dengue pertence à '
                            'família dos flavivírus e é classificado no meio científico como um arbovírus, os quais são transmitidos pelos mosquitos '
                            'Aedes aegypti. São conhecidos quatro sorotipos:',
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
                        text: 'Quais os sintomas? O doente pode apresentar sintomas como febre, dor de cabeça, dores pelo corpo, náuseas ou até mesmo'
                            ' não apresentar qualquer sintoma.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O aparecimento de manchas vermelhas na pele, sangramentos (nariz, gengivas), dor abdominal intensa e '
                            'contínua e vômitos persistentes podem indicar um sinal de alarme para dengue hemorrágica. Esse é um quadro grave que '
                            'necessita de imediata atenção médica, pois pode ser fatal.É importante procurar orientação médica ao surgirem os '
                            'primeiros sintomas' ,
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
