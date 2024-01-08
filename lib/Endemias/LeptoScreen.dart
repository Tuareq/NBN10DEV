import 'package:flutter/material.dart';

class LeptoScreen extends StatelessWidget {
  const LeptoScreen({Key? key}) : super(key: key);

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
                        text:'A leptospirose é uma doença infecciosa febril aguda que resulta da exposição direta ou indireta a urina '
                            'de animais (principalmente ratos) infectados pela bactéria Leptospira; sua penetração ocorre através da '
                            'pele com lesões, pele íntegra imersa por longos períodos em água contaminada ou através de mucosas.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: ' Em situações de enchentes e inundações, a urina dos ratos, presente em esgotos e bueiros, mistura-se à '
                            'enxurrada e à lama das enchentes. Qualquer pessoa que tiver contato com a água das chuvas ou lama contaminadas '
                            'poderá se infectar. As leptospiras presentes na água penetram no corpo humano pela pele, principalmente se houver '
                            'algum arranhão ou ferimento. O contato com água ou lama de esgoto, lagoas ou rios contaminados e terrenos baldios '
                            'com a presença de ratos também podem facilitar a transmissão da leptospirose. Veterinários e tratadores de animais '
                            'podem adquirir a doença pelo contato com a urina de animais doentes ou convalescentes.',
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
                        text: 'O tratamento é baseado no uso de medicamentos e outras medidas de suporte, orientado sempre por um '
                            'médico, de acordo com os sintomas apresentados. Os casos leves podem ser tratados em ambulatório, '
                            'mas os casos graves precisam internação hospitalar. A automedicação não é indicada, pois pode agravar a doença.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'Para o controle da leptospirose, são necessárias medidas ligadas ao meio ambiente, tais como obras de saneamento '
                            'básico (abastecimento de água, lixo e esgoto), melhorias nas habitações humanas e o combate aos ratos.Deve-se evitar '
                            'o contato com água ou lama de enchentes e impedir que crianças nadem ou brinquem nessas águas ou outros ambientes que '
                            'possam estar contaminados pela urina dos ratos. Pessoas que trabalham na limpeza de lamas, entulhos e desentupimento '
                            'de esgoto devem usar botas e luvas de borrachas',
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
