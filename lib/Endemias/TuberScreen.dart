import 'package:flutter/material.dart';

class TuberScreen extends StatelessWidget {
  const TuberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tuberculose'),
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
                    'asset/virus/bacTuberculose160.png',
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
                        text:'A tuberculose é uma doença infecciosa e transmissível que afeta prioritariamente os pulmões, '
                            'embora possa acometer outros órgãos e/ou sistemas. A doença é causada pelo Mycobacterium tuberculosis '
                            'ou bacilo de Koch.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'Cerca de 10 milhões de pessoas adoecem por tuberculose no mundo, e a doença leva mais de um milhão de '
                            'pessoas a óbito anualmente. A forma pulmonar, além de ser mais frequente, é também a mais relevante para a '
                            'saúde pública, principalmente a forma positiva à baciloscopia, pois é a principal responsável pela manutenção '
                            'da cadeia de transmissão da doença.',
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
                        text: 'A forma pulmonar, além de ser mais frequente, é também a mais relevante para a saúde pública, '
                  'principalmente a positiva à baciloscopia, pois é a principal responsável pela manutenção da cadeia de transmissão '
                  'da doença.A forma extrapulmonar, que acomete outros órgãos que não o pulmão, ocorre mais frequentemente em pessoas '
                  'que vivem com o HIV, especialmente entre aquelas com comprometimento imunológico.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O principal sintoma da tuberculose pulmonar é a tosse na forma seca ou produtiva. Por isso, recomenda-se que todo '
                            'sintomático respiratório, que é a pessoa com tosse por três semanas ou mais, seja investigado para tuberculose. '
                            'Há outros sinais e sintomas que podem estar presentes, como:Febre vespertina, Sudorese noturna, Emagrecimento, Cansaço/fadiga',
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
