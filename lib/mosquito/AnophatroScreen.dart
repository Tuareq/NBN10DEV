import 'package:flutter/material.dart';

class AnophatroScreen extends StatelessWidget {
  const AnophatroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anopheles Atroparvus'),
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
                    'asset/mosquito/anophelesAtroparvus160.png',
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
                            'É considerada a espécie de mosquito mais comum e abundante em Portugal. Um estudo, realizado em Espanha entre '
                            '2001 e 2005 em quatro das zonas húmidas mais importantes, concluiu que era a quarta espécie de mosquito mais abundante '
                            'e uma das a espécie mais comum em campos de arroz ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Os adultos de Anopheles atroparvus são quase impossíveis de distinguir de outras espécies irmãs do complexo '
                            'Anopheles maculipennis e são mais facilmente identificados morfologicamente pelo exame de seus ovos. Os ovos de Anopheles '
                            'atroparvus têm uma superfície superior suavemente padronizada com marcas escuras em forma de cunha sobre um fundo claro ',
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
                            'As fêmeas adultas são geralmente zoofílicas, com preferência por animais domésticos, mas isso depende da disponibilidade'
                            ' do hospedeiro. Esta espécie morde facilmente humanos.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'As larvas de Anopheles atroparvus podem ser encontradas em uma variedade de ambientes, incluindo água doce e salgada, '
                            'mas acredita-se que prefiram água salobra e iluminada pelo sol, com grandes quantidades de algas filamentosas ou vegetação '
                            'flutuante [1]. No entanto, alguns sugerem que esta espécie prefere água mais fria.Embora se pense que esta espécie '
                            'prefere água salobra com uma salinidade não superior a 10 partes por 1000, também é comumente encontrada em habitats de '
                            'água doce, como canais, valas, margens de rios, poças em leitos de rios e campos de arroz.',
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
