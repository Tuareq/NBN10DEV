import 'package:flutter/material.dart';

class TritaeScreen extends StatelessWidget {
  const TritaeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culex Tritaeniorhynchus'),
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
                    'asset/mosquito/culexTritaeniorhynchus160.png',
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
                            'Culex (Culex) tritaeniorhynchus é uma espécie de mosquito e é o principal vetor da doença encefalite japonesa. '
                            'Este mosquito é nativo do norte da Ásia e de partes da África (nordeste e subsaariana ). '
                            'As fêmeas têm como alvo animais de grande porte para extração de sangue , incluindo bovinos e suínos , '
                            'e são fortemente antropofílicas',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'O habitat larval de Cx. tritaeniorhynchus consiste principalmente em áreas baixas alagadas, como gramíneas e campos de arroz em pousio,'
                            ' mas esta espécie também pode ser encontrada em poços, lagoas, valas e foi relatada em ambientes urbanos próximos a populações humanas,'
                            ' como recipientes de armazenamento de água em casas. ',
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
                            'A espécie de mosquito Culex tritaeniorhynchus Giles faz parte do subgrupo Culex vishnui , que também inclui'
                            ' Culex pseudovishnui Colless e Cx. Vishnui Theobald.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'A emergência dos adultos normalmente começa no meio da tarde e atinge o máximo por volta do anoitecer '
                            '. tritaeniorhynchus geralmente tem um perfil de mordida bifásico - com pico de alimentação por volta das 19h, '
                            'diminuindo à meia-noite e atingindo o pico novamente por volta das 3h. [11] [12] [13] A periodicidade pode mudar '
                            'drasticamente dependendo da localização, estação e clima; [14] são necessários mais estudos para determinar os hábitos '
                            'deste vetor em cada uma das suas diferentes distribuições, uma vez que as informações sobre a atividade de picada dos '
                            'vetores podem desempenhar um papel vital nas medidas de proteção pessoal, no controle do vetor e na prevenção de '
                            'picadas. Culex tritaeniorhynchus é predominantemente um exofílicoespécies que descansam ao ar livre após uma '
                            'refeição de sangue, no entanto, isso também varia de acordo com a localização geográfica. ',
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
