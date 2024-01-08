import 'package:flutter/material.dart';

class HistoScreen extends StatelessWidget {
  const HistoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histoplasmose'),
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
                    'asset/virus/histoplasmose160.png',
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
                            'A histoplasmose é uma infecção fúngica sistêmica que pode se apresentar desde uma infecção assintomática até a forma de doença disseminada com evolui para óbito. Ela é causada por fungos dimórficos da espécie Histoplasma capsulatum. Os indivíduos '
                            'geralmente adquirem a infecção pela inalação (entrada) de partículas infectantes do fungo decorrente do manuseio do solo, frutas secas '
                            'e cereais e nas árvores.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'As manifestações clínicas da histoplasmose dependem do estado imunológico do indivíduo, da virulência da cepa e do tamanho do inóculo. A sintomatologia inclui febre, calafrios, tosse seca, fraqueza, perda de peso, dor de cabeça e dores musculares. '
                            'O indivíduo doente ainda pode apresentar dificuldade ao respirar, de intensidade variável e, ocasionalmente, dor no peito, dificuldade e'
                            ' dor ao deglutir.',
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
                            'A histoplasmose pode ser diagnosticada por meio de uma correlação entre os dados clínicos, epidemiológicos e laboratoriais e/ou radiológicos. Os métodos diagnósticos que confirmam ou sugerem a infecção fúngica são o micológico, o histopatológico e o sorológico. '
                            'A confirmação diagnóstica laboratorial é feita por meio do isolamento do fungo. Entretanto, resultado negativo em amostras suspeitas não '
                            'afasta o diagnóstico.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'O tratamento da histoplasmose dever ser realizado após a avaliação clínica, com '
                            'orientação e acompanhamento médico. Na grande maioria das vezes, a infecção evolui para cura espontaneamente, sem a necessidade de '
                            'medicamentos antifúngicos.',
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
