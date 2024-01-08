import 'package:flutter/material.dart';

class BruceScreen extends StatelessWidget {
  const BruceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brucelose'),
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
                    'asset/virus/bacBrucelose80.png',
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
                        text:'A brucelose humana é uma doença que pode ser transmitida ao ser humano por animais terrestres e aquáticos infectados. '
                            'Na maioria das vezes, a doença é transmitida ao homem por contato direto ou indireto com animais e seus produtos derivados '
                            'contaminados. Os seres humanos são apenas alguns dos possíveis hospedeiros.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: ' Importante:  Embora a brucelose humana chame atenção dos sistemas de saúde em todo o mundo por ser uma doença que apresenta importantes impactos,'
                            ' desde o ponto de vista ocupacional, problemas sanitários e até prejuízos econômicos, ela ainda é pouco conhecida, de difícil diagnóstico, '
                            'subnotificada e negligenciada.',
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
                        text: 'A brucelose humana é causada por bactérias do gênero Brucella spp. da família Brucellaceae. Possui alta prevalência '
                            'em ambientes ocupacionais e é citada na lista de doenças relacionadas ao trabalho, segundo a Portaria nº 1.339/1999, '
                            'do Ministério da Saúde. A doença, que é responsável por incapacidade para o trabalho ou diminuição do rendimento '
                            'profissional, atinge principalmente trabalhadores que manejam animais e da cadeia de produção de laticínios, carnes '
                            'e seus derivados.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'Como a bactéria possui múltiplas rotas de infecção, sendo que os mamíferos são os principais hospedeiros naturais, '
                            'gera um cenário de difícil controle e de real ameaça para a saúde pública, qualidade de vida e sobrevivência de pessoas e '
                            'animais.De forma geral, a doença acomete com maior frequência aos trabalhadores rurais (ex: vaqueiros, boiadeiros, '
                            'vacinadores, tratadores de animais, produtores de carne, leite e queijo), veterinários, trabalhadores de frigorifico '
                            '(ex. abatedores) e trabalhadores de laboratórios.',
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
