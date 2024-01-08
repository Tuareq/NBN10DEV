import 'package:flutter/material.dart';

class EripsScreen extends StatelessWidget {
  const EripsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eripsela'),
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
                    'asset/virus/bacEripsela160.png',
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
                        text:'Erisipela é um processo infeccioso da pele, que pode atingir a gordura do tecido celular, causado por uma '
                            'bactéria que se propaga pelos vasos linfáticos. Pode ocorrer em pessoas de qualquer idade, mas é mais comum '
                            'nos diabéticos, obesos e nos portadores de deficiência da circulação das veias dos membros inferiores.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: ' A erisipela ocorre porque uma bactéria (Estreptococo) penetra na pele; a porta de entrada quase sempre é uma '
                            'micose entre os dedos (as famosas “frieiras”), mas qualquer ferimento pode desencadear o mal. A pele mais favorável'
                            ' é a das pernas inchadas, principalmente nos pacientes diabéticos, obesos e idosos.',
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
                        text: 'Os primeiros sintomas podem ser aqueles comuns a qualquer infecção: calafrios, febre alta, fraqueza, '
                            'dor de cabeça, mal-estar, náuseas e vômitos. As alterações da pele podem se apresentar rapidamente e variam '
                            'desde uma simples vermelhidão, dor e inchaço até a formação de bolhas e feridas por necrose (morte das células) da pele.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O tratamento é uma combinação de várias medidas realizadas ao mesmo tempo e só deve ser administrado pelo médico: '
                            'uso de antibióticos específicos para eliminar a bactéria causadora;redução do inchaço, fazendo repouso absoluto com '
                            'as pernas elevadas, principalmente na fase inicial. Pode ser necessário o enfaixamento da perna para que desinche '
                            'mais rapidamente;fechamento da porta de entrada da bactéria, tratando as lesões de pele e as frieiras;limpeza '
                            'adequada da pele, eliminando o ambiente propício para o crescimento das bactérias;uso de medicação de apoio, '
                            'como antiinflamatórios, antifebris, analgésicos e outras que atuam na circulação linfática e venos',
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
