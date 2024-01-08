import 'package:flutter/material.dart';

class AlbimanusScreen extends StatelessWidget {
  const AlbimanusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anopheles Albimanus'),
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
                    'asset/mosquito/anophelesAlbimanus140.png', // Substitua pelo caminho correto da sua imagem
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
                            'Muitas espécies diferentes de mosquitos Anopheles são vetores competentes de organismos da malária ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'No entanto, a maioria das espécies de Anopheles não o são, devido à variação nos padrões de seleção de hospedeiros, '
                            'longevidade, abundância e competência vetorial. Na América do Norte, An. quadrimaculatus, que forma um complexo '
                            'com mais quatro espécies localizadas, mas quase idênticas ( Reinert et al., 1997), é o principal vector da malária '
                            'nos dois terços orientais do continente.',
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
                            'Ela se desenvolve ao longo das bordas de piscinas permanentes, lagos e pântanos que fornecem água relativamente limpa, '
                            'parada e iluminada pelo sol, com vegetação emergente exuberante, arbustos marginais ou detritos flutuantes para fornecer '
                            'sombra parcial e proteção contra a ação das ondas.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'No oeste da América do Norte, An. freeborni é o vetor principal, um habitante de águas claras em piscinas '
                            'abertas, rasas e iluminadas pelo sol, lagoas, valas e áreas de infiltração parcialmente sombreadas pela vegetação.',
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
