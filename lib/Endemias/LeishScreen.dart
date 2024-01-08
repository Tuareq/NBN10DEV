import 'package:flutter/material.dart';

class LeishScreen extends StatelessWidget {
  const LeishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leishmania amazonensis'),
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
                    'asset/virus/virusLeish160.png',
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
                        'A Leishmaniose Tegumentar é uma doença infecciosa, não contagiosa, que provoca úlceras na pele e mucosas. A doença é causada '
                            'por protozoários do gênero Leishmania. No Brasil, há sete espécies de leishmanias envolvidas na ocorrência de casos de LT.'
                            ' As mais importantes são: Leishmania (Leishmania) amazonensis, L. (Viannia) guyanensis e L.(V.) braziliensis.Os insetos '
                            'pertencentes à ordem Diptera, família Psychodidae, subfamília Phlebotominae, gênero Lutzomyia, conhecidos popularmente, '
                            'dependendo da localização geográfica, como mosquito palha, tatuquira e birigui, são os principais vetores da Leishmaniose '
                            'Tegumentar.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'Espécies da Leishmaniose Tegumentar: Leishmania amazonensis, Leishmania (Viannia) guyanensis, Leishmania (Viannia) braziliensis.',
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
                        'AOs sintomas da Leishmaniose Tegumentar são lesões na pele e/ou mucosas. As lesões de pele podem ser única, múltiplas, '
                            'disseminada ou difusa. Elas apresentam aspecto de úlceras, com bordas elevadas e fundo granuloso, geralmente indolor. '
                            'Os vetores da Leishmaniose Tegumentar são insetos conhecidos popularmente, dependendo da localização geográfica, como '
                            'mosquito palha, tatuquira, birigui, entre outros. A transmissão da Leishmaniose Tegumentar ocorre pela picada de fêmeas '
                            'infectadas desses insetos. .',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'O Sistema Único de Saúde (SUS) oferece tratamento específico e gratuito para a Leishmaniose Tegumentar. O tratamento é feito '
                            'com uso de medicamentos específicos, repouso e uma boa alimentação.',
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
