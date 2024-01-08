import 'package:flutter/material.dart';

class DipiliScreen extends StatelessWidget {
  const DipiliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dipilidiose'),
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
                    'asset/virus/dipilidiose160.png',
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
                        text:'A dipilidiose é uma doença parasitária causada pelo cestóide Dipylidium caninum, que na sua forma adulta parasita o intestino delgado de '
                            'caninos, felinos e acidentalmente o homem. No estádio larval, o parasito localiza-se na cavidade geral dos hospedeiros intermediários, '
                            'as pulgas e piolhos',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'Possui como agente etiológico o parasita Dipylidium caninum, que é um cestóide semelhante à tênia, transmitido por pulgas ou, em menor escala, por piolhos mastigadores (hospedeiros intermediários). Possui um corpo segmentado, cuja cabeça, mais conhecida como escoléx, fixa-se no intestino'
                            ' do hospedeiro definitivo, e seu corpo, dividido em segmentos, conhecidos como proglótides, destacam-se deste cestóide e são liberados '
                            'com as fezes.',
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
                        text: 'A larva da pulga infecta-se ingerindo ovos eliminados ao ambiente junto às fezes do hospedeiro definitivo infectado. Nestas larvas, os ovos continuam sua evolução, enquanto a larva da pulga se transforma em adulta e passa a parasitar o animal. Quando este ingere '
                            'acidentalmente a pulga contaminada, o D. caninum alcança o final do seu ciclo, crescendo e transformando-se em adulto no intestino do '
                            'hospedeiro definitivo.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'As crianças são as mais acometidas por este tipo de parasitose, apresentando como manifestações clínicas irritabilidade,'
                            ' insônia e perda de apetite; dores abdominais (cólicas), diarréia e prurido anal são frequentes. Todavia, a doença não é'
                            ' grave. Já nos animais, o sintoma mais comum é prurido anal ocasionalmente, porém pode haver também diarréia e a presença '
                            'do parasita nas fezes.A profilaxia da dipilidiose humana é feita com maior eficácia por meio do controle de pulgas nos '
                            'animais, utilizando inseticidas adequados, além da realização de uma vermifugação sistemática dos animais.',
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
