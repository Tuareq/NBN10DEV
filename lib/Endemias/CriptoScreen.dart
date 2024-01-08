import 'package:flutter/material.dart';

class CriptoScreen extends StatelessWidget {
  const CriptoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criptococose'),
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
                    'asset/virus/criptococose160.png',
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
                        text:'A criptococose é uma doença classificada como micose sistêmica, causada por fungos do gênero Cryptococcus e que, '
                            'dependendo do caso, pode matar. As seguintes variantes (var.) do fungo Cryptococcus neoformans são comumente causadoras '
                            'dessa doença: C. neoformans var. neoformans (C. neoformans), C. neoformans var. gatti (C. gatti)',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'Quais os sintomas? Variam de acordo com o local onde o cisticerco está alojado.Neurocisticercose Cisticercos localizados '
                            'no cérebro: Dores de cabeça frequentes;Convulsões;Confusão mental.Pode se localizar na musculatura ocasionando:Inchaço; '
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
                        text: 'Em pacientes imunocompetentes, observa-se meningoencefalite de forma aguda ou crônica, com dor nos olhos e na cabeça, usualmente sem febre ou com quadro febril pouco '
                            'expressivo, que evolui para dor de cabeça intensa e presença de sinais mais graves, como estrabismo, paralisia facial e cegueira total ou parcial.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O principal reservatório do fungo é a matéria orgânica morta presente no solo, em frutas secas e cereais, e nas árvores. '
                            'O fungo causador da doença também é encontrado nas fezes de aves, principalmente dos pombos.A variante C. neoformans, de '
                            'caráter oportunista, representa a principal causa de meningoencefalite e morte em indivíduos com a Síndrome da Imunodeficiência'
                            ' Adquirida (aids). No entanto, essa espécie também acomete indivíduos sem problemas de saúde em todo o mundo.Já a variante '
                            'C. gattii acomete crianças e jovens sem evidência de imunodepressão aparente, sendo de comportamento endêmico ou focal n'
                            'as zonas tropicais e subtropicais, especialmente nas regiões Norte (Amazônia) e Nordeste do Brasil, incluído o semiárido, e, '
                            'esporadicamente, nas demais regiões brasileiras.',
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
