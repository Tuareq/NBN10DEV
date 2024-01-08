import 'package:flutter/material.dart';

class FasciatusScreen extends StatelessWidget {
  const FasciatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culex Quinquefasciatus'),
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
                    'asset/mosquito/culexquinquefasciatus140.png', // Substitua pelo caminho correto da sua imagem
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
                            'Mais conhecido pelo nome popular de PERNILONGO ou MURIÇOCA, o Culex quinquefasciatus é uma verdadeira praga para os moradores '
                            'das concentrações humanas nas regiões mais quentes das Américas, Ásia, África e Oceania.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Demonstra preferência especial pelo homem. É encontrado com frequência dentro das casas, abrigado embaixo e atrás dos móveis, principalmente nos quartos. '
                            'As fêmeas começam a agir ao crepúsculo e picam durante toda a noite, mas preferem as horas mais avançadas e os momentos pouco '
                            'antes do amanhecer.É mais frequente nos meses quentes e chuvosos, pois a água que se acumula no solo amplia seus criadouros, '
                            'mas pode ser encontrado durante todo o ano.',

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
                            'Regiões carentes, onde não há condições de saneamento e com crescimento e ocupações desordenadas da população, são locais que '
                            'propiciam a proliferação do inseto, já que seus criadouros referenciais são depósitos artificiais, no solo ou em '
                            'recipientes, com água estagnadas e poluídas, de aspecto sujo e mal cheirosa, rica em detritos e dejetos.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Põem seus ovos em valas negras, fossas, ralos, poços, latões, bebedouros de animaise latas e copos usados. '
                            'Ao contrário do Aedes aegypti, que põe seus ovos em locais úmidos pouco acima do nível d´água, o Culex deposista os '
                            'ovos diretamente sobre a água dos criadouros, em jangadas.Além de principal transmissor da filariose no Brasil, o '
                            'Culex quinquefasciatus é vetor secundário do vírus Oropouche..',
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
