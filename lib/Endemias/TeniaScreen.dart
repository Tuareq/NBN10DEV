import 'package:flutter/material.dart';

class TeniaScreen extends StatelessWidget {
  const TeniaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solitária - Taenia Solium ou Saginata'),
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
                    'asset/virus/tenia160.png',
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
                        'Tênia (português brasileiro) ou ténia (português europeu) ou solitária é o nome comum dado aos vermes platelmintos das ordens '
                            'Pseudophilidae e Ciclophylidae, que pertencem à classe Cestoda, que inclui os vermes parasitas de diversos animais vertebrados,'
                            ' inclusive do homem. A Taenia solium e a Taenia saginata são as mais conhecidas por parasitarem o intestino delgado do homem. '
                            'Os seus hospedeiros intermediários são o porco, no caso da Taenia solium, o boi no caso da Taenia saginata . ',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A teníase intestinal (o homem como hospedeiro definitivo da forma adulta do helminto) é frequentemente assintomática, '
                            'mas em algumas pessoas pode causar sintomas de reacção imunológica como eosinofilia, náuseas, vômitos, diarreia ou obstipação, dor abdominal,'
                            ' sensação de movimento intestinal, sons e alterações do apetite. Em indivíduos subnutridos pode agravar a desnutrição. '
                            'A infecção não dá imunidade a reinfecção.',
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
                        'A Teníase ocorre quando o homem se infecta ingerido as larvas cisticercos ao consumir carne crua ou mal-cozida '
                            '(vermelha, mesmo que não tenha sangue) de suíno, bovino ou peixe da água doce. A larva cisticerco evolui '
                            'para a forma adulta no intestino do homem.A Cisticercose ocorre quando seres humanos ingerem água, terra ou '
                            'alimentos contaminados com ovos de Taenia solium .',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A Cisticercose é devida à ingestão acidental de ovos de tênia em água ou comida contaminadas com ovos do parasita: o ser humano é acidentalmente '
                            'tomado como hospedeiro intermediário.As tênias vivem na mucosa do intestino delgado, fixas através do rostro ( 4 cavidades no escólex). O Cysticercus cellulosae '
                            'é encontrado no tecido subcutâneo, muscular, cardíaco, cerebral e no olho do suíno, e acidentalmente no homem e cão.' ,
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
