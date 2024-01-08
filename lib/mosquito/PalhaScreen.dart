import 'package:flutter/material.dart';

class PalhaScreen extends StatelessWidget {
  const PalhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flebotoma Palha'),
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
                    'asset/mosquito/flebotomopallha160.png',
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
                            'Leishmaniose Doença infecciosa, porém, não contagiosa, causada por parasitas do gênero Leishmania. '
                            'Os parasitas vivem e se multiplicam no interior das células que fazem parte do sistema de defesa do indivíduo, '
                            'chamadas macrófagos. Há dois tipos de leishmaniose: leishmaniose tegumentar ou cutânea e a leishmaniose visceral ou calazar.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'A leishmaniose tegumentar caracteriza-se por feridas na pele que se localizam com maior freqüência nas partes '
                            'descobertas do corpo. Tardiamente, podem surgir feridas nas mucosas do nariz, da boca e da garganta. '
                            'Essa forma de leishmaniose é conhecida como “ferida brava”. A leishmaniose visceral é uma doença sistêmica, '
                            'pois, acomete vários órgãos internos. É uma doença de evolução longa, podendo durar alguns meses ou até ultrapassar '
                            'o período de um ano.',
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
                            'A leishmaniose é transmitida por insetos hematófagos os flebótomos. é devido ao seu pequeno tamanho são capazes de atravessar '
                            'as malhas dos mosquiteiros e telas. Seus nomes mais comuns são: mosquito palha, tatuquira, birigüi cangalinha, asa branca, asa dura e palhinha.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'O mosquito palha ou asa branca é mais encontrado em lugares úmidos, escuros. As fontes de infecção das leishmanioses são, '
                            'principalmente, os animais e os insetos Flebótomideos, porém, o hospedeiro normal é o cão doméstico e o cavalo.Na leishmaniose'
                            ' cutânea os animais silvestres que atuam como reservatórios são os roedores silvestres. Na leishmaniose visceral a principal fonte de '
                            'infecção é a raposa do campo e cães. Sintomas: Leishmaniose visceral: febre irregular,  anemia; indisposição;palidez da pele e ou '
                            'das mucosas; falta de apetite; perda de peso entre outros. Leishmaniose cutânea:aparece uma pequena pápula que cresce até '
                            'virar uma ferida recoberta por crosta ou secreção purulenta.',
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
