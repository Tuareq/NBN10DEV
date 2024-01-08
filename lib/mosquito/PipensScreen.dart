import 'package:flutter/material.dart';

class PipensScreen extends StatelessWidget {
  const PipensScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culex Pipens'),
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
                    'asset/mosquito/culexPipens160.png',
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
                            'Culex pipiens é um complexo de espécies nativas da Europa que é conhecido como praga em ambientes urbanos. Desde o '
                            'início do século XX, foram organizadas campanhas em muitas cidades europeias para controlar a espécie. '
                            'A espécie apresenta alta plasticidade ecológica, o que dá um quadro complexo em termos de comportamento trófico e capacidades'
                            ' vetoriais.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Fêmeas de Cx. pipiens se alimenta de uma variedade de hospedeiros vertebrados e pode, portanto, contribuir para o ciclo de'
                            ' amplificação do vírus do Nilo Ocidental (WNV) entre aves, e também para a disseminação ocasional de vírus para populações '
                            'humanas e de outros mamíferos. Assim, Cx. Os mosquitos pipiens são os principais vetores dos vírus do Nilo Ocidental '
                            'e do vírus Usutu (USUV) na Europa. Eles também são capazes de transmitir vários outros arbovírus, ao mesmo tempo que atuam '
                            'como vetores de vermes filariais (por exemplo, dirofilariose canina) e plasmódios que causam a malária aviária.',
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
                            'As fêmeas põem seus ovos na superfície da água em lotes como jangadas contendo cerca de 200 ovos. Esses ovos não estão '
                            'dormentes e as larvas eclodem rapidamente assim que o desenvolvimento embrionário está completo. A duração do desenvolvimento'
                            ' depende da temperatura. Assim, os ovos eclodem após apenas um dia a 30°C. As larvas se desenvolvem em adultos dentro de algumas '
                            'semanas, dependendo da temperatura (6-7 dias a 30 °C). Eles podem habitar quase todos os tipos de fontes de água. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Culex pipiens é nativo da África, Ásia e Europa, embora hoje em dia esteja amplamente distribuído. Vive em regiões temperadas da '
                            'Europa, Ásia, África, Austrália e América do Norte e do Sul.',
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
