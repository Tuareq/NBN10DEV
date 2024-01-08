import 'package:flutter/material.dart';

class CisteScreen extends StatelessWidget {
  const CisteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cisticercose'),
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
                    'asset/virus/cisiticercose160.png',
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
                        text:'É uma doença parasitária causada pela ingestão dos ovos da tênia, presente nas fezes do indivíduo com teniose.Como se pega a '
                            'cisticercose?Através de alimentos ou água contaminada com fezes de humanos portadores da tênia.Quando uma pessoa com '
                            'tênia defeca no chão ao ar livre, ou em casinhas (privadas), libera esses ovos, que são levados pelo vento, contaminando '
                            'as águas dos rios e fontes, as verduras, o pasto, etc. Se os animais e as pessoas comem alimentos ou bebem água contaminada '
                            'com essas fezes, acabam desenvolvendo a doença.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'Quais os sintomas? Variam de acordo com o local onde o cisticerco está alojado.Neurocisticercose Cisticercos localizados '
                            'no cérebro:Dores de cabeça frequentes;Convulsões;Confusão mental.Pode se localizar na musculatura ocasionando:Inchaço; '
                            'Inflamação;Dificuldade nos movimentos.Cisticercose ocular:Pode levar a cegueira.',
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
                        text: 'Como tratar?  Procure o médico se aparecer qualquer sintoma (Convulsões, dores de cabeça frequentes e confusão '
                            'mental) de cisticercose, a fim de fazer o diagnóstico.O tratamento da neurocisticercose deve ser realizado '
                            'preferencialmente em ambiente hospitalar.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'No Brasil, a cisticercose tem sido cada vez mais diagnosticada, principalmente nas regiões Sul e Sudeste, tanto em serviços '
                            'de neurologia e neurocirurgia quanto em estudos anatomopatológicos. A baixa ocorrência de cisticercose em algumas áreas '
                            'do Brasil, como por exemplo nas regiões Norte e Nordeste, pode ser explicada pela falta de notificação ou porque o tratamento '
                            'é realizado em grandes centros, como São Paulo, Curitiba, Brasília e Rio de Janeiro, o que dificulta a identificação da'
                            ' procedência do local da infecção.',
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
