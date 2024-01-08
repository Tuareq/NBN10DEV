import 'package:flutter/material.dart';

class RaivaScreen extends StatelessWidget {
  const RaivaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raiva  Lyssavirus'),
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
                    'asset/virus/virusRaiva80.png',
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
                        'MPORTANTE: A raiva é de extrema importância para saúde pública, devido a sua letalidade de aproximadamente 100%, por ser uma doença passível de eliminação no seu ciclo urbano (transmitido por cão e gato) e pela existência de medidas '
                            'eficientes de prevenção, como a vacinação humana e animal, a disponibilização de soro antirrábico humano, a realização de bloqueios '
                            'de foco, entre outras. ',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A raiva é uma doença infecciosa viral aguda, que acomete mamíferos, inclusive o homem, e caracteriza-se'
                            ' como uma encefalite progressiva e aguda com letalidade de aproximadamente 100%. É causada pelo Vírus do gênero '
                            'Lyssavirus, da família Rabhdoviridae.',
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
                        'A infecção da raiva progride, surgindo manifestações mais graves e complicadas, como: ansiedade e hiperexcitabilidade'
                            ' crescentes; febre;delírios;espasmos musculares involuntários, generalizados, e/ou convulsões.Espasmos dos músculos da '
                            'laringe, faringe e língua ocorrem quando o paciente vê ou tenta ingerir líquido, apresentando sialorreia intensa '
                            '(“hidrofobia”).Os espasmos musculares evoluem para um quadro de paralisia, levando a alterações cardiorrespiratórias,'
                            ' retenção urinária e obstipação intestinal. Observa-se, ainda, a presença de disfagia, aerofobia, hiperacusia e fotofobia.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A raiva é transmitida ao homem pela saliva de animais infectados, principalmente por meio da mordedura, '
                            'podendo ser transmitida também pela arranhadura e/ou lambedura desses animais.',
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
