import 'package:flutter/material.dart';

class AegyptiScreen extends StatelessWidget {
  const AegyptiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mosquito Aedes Aegypti'),
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
                    'asset/mosquito/AedesAegypti200.png',
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
                            'O Mosquito Aedes aegypti (ODIOSO DO EGITO OU DEMÔNIO DO EGITO) é o transmissor da dengue e da febre amarela, '
                            'É preto com listras brancas no tronco, na cabeça e nas pernas. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Suas asas são translúcidas e o ruído que produzem é praticamente inaudível ao ser humano. O macho, como de qualquer espécie, '
                            'alimenta-se exclusivamente de frutas. Põe seus ovos em recipientes como latas e garrafas vazias, pneus, calhas, caixas d’água '
                            'descobertas, pratos sob vasos de plantas ou qualquer outro objeto que possa armazenar água da chuva. O mosquito pode procurar ainda '
                            'criadouro naturais, como bromélias, bambus e buracos em árvores.',
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
                        text: 'A fêmea, no entanto, '
                            'necessita de sangue para o amaduremento dos ovos que são depositados separadamente nas paredes internas dos objetos, '
                            'próximos a superfícies de água limpa, local que lhes oferece melhores condições de sobrevivência.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'No momento da postura são brancos, '
                            'mas logo se tornam negros e brilhantes. Em média, cada mosquito vive em torno de 30 dias e a fêmea chega a colocar entre 150 e 200 ovos. '
                            'Se forem postos por uma fêmea contaminada pelo vírus da dengue, ao completarem seu ciclo evolutivo, transmitirão a doença. Os ovos não '
                            'são postos na água, e sim milímetros acima de sua superfície, principalmente em recipientes artificiais. Quando chove, o nível da '
                            'água sobe, entra em contato com os ovos que eclodem em pouco menos de 30 minutos. Em um período que varia '
                            'entre sete e nove dias, a larva passa por quatro fases até dar origem a um novo mosquito: ovo, larva, pupa e adulto.',
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
