import 'package:flutter/material.dart';

class HepaScreen extends StatelessWidget {
  const HepaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hepatite'),
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
                    'asset/virus/virusHepatiteB160.png',
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
                        'Hepatite designa qualquer inflamação do fígado por causas diversas, sendo as mais freqüentes as infecções pelos vírus tipo A, B e C e o '
                            'abuso do consumo de álcool ou outras substâncias tóxicas (como alguns remédios). Enquanto os vírus atacam o fígado quando '
                            'parasitam suas células para a sua reprodução, a cirrose dos alcoólatras é causada pela ingestão freqüente de bebidas alcoólicas'
                            ' – uma vez no organismo, o álcool é transformado em ácidos nocivos às células hepáticas.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'Hepatite A: é transmitida por água e alimentos contaminados ou de uma pessoa para outra; a doença fica incubada entre 10 e 50 dias e '
                            'normalmente não causa sintomas, porém quando presentes, os mais comuns são febre, pele e olhos amarelados, náusea e vômitos, mal-estar,'
                            ' desconforto abdominal, falta de apetite, urina com cor de coca-cola e fezes esbranquiçadas',
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
                        'Hepatite B e Hepatite C: os vírus da hepatite tipo B (HBV) e tipo C (HCV) são transmitidos sobretudo por meio do sangue.'
                            ' Usuários de drogas injetáveis e pacientes submetidos a material cirúrgico contaminado e não-descartável estão entre as '
                            'maiores vítimas, daí o cuidado que se deve ter nas transfusões sangüíneas, no dentista, em sessões de depilação ou tatuagem.'
                            ' O vírus da hepatite B pode ser passado pelo contato sexual, ',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'Não existe tratamento para a forma aguda. Se necessário, apenas para sintomas como náuseas e vômitos. O repouso é '
                            'considerado importante pela própria condição do paciente.',
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
