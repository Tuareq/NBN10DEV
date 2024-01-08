import 'package:flutter/material.dart';

class ChikungunyaScreen extends StatelessWidget {
  const ChikungunyaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vírus Chikungunya'),
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
                    'asset/virus/virusChicungunha160.png',
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
                        text:'Febre chikungunya é uma doença viral transmitida pelos mosquitos Aedes aegypti e Aedes albopictus. No Brasil, '
                            'a circulação do vírus foi identificada pela primeira vez em 2014. Chikungunya significa "aqueles que se dobram" em swahili, '
                            'Refere-se à aparência curvada dos pacientes que foram atendidos,',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'Os principais sintomas são febre são:alta de início rápido, dores intensas nas articulações dos pés e mãos, além de dedos, '
                            'tornozelos e pulsos. Pode ocorrer ainda dor de cabeça, dores nos músculos e manchas vermelhas na pele. '
                            'A transmissão do vírus chikungunya (CHIKV) é feita através da picada de insetos-vetores do gênero Aedes, '
                            'que em cidades é principalmente pelo Aedes aegypti e em ambientes rurais ou selvagens pode ser por Aedes albopictus.',
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
                        text:'O período de incubação do vírus é de 4 a 7 dias, '
                            'e a doença, na maioria dos casos, é auto-limitante. A mortalidade em menores de um ano é de 0,4%, podendo ser '
                            'mais elevada em indivíduos com patologias associadas. Prevenção, ainda não existe vacina ou medicamentos contra chikungunya. '
                            'Portanto, a única forma de prevenção é acabar com o mosquito, mantendo o domicílio sempre limpo, eliminando os possíveis criadouros.',
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
