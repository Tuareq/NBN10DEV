import 'package:flutter/material.dart';

class QuadriScreen extends StatelessWidget {
  const QuadriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anopheles Quadrimaculatus Say'),
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
                    'asset/mosquito/anophelesQuadrimaculatus160.png',
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
                            'Anopheles Quadrimaculatus Say - é historicamente o vetor mais importante da malária no leste dos Estados Unidos. '
                            'A malária foi uma praga grave nos Estados Unidos durante séculos, até à sua erradicação final na década de 1950 ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Além de ser um vetor de patógenos, Anopheles quadrimaculatus say também pode ser uma espécie de praga (O Malley 1992).'
                            ' Esta espécie foi reconhecida como um complexo de cinco espécies irmãs (Reinert et al. 1997) e é comumente referida '
                            'como Anopheles quadrimaculatus ( sensu lato ) quando em uma coleção ou identificada em campo. Os hospedeiros mais comuns '
                            'são mamíferos de grande porte, incluindo humanos. ',
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
                            'Os mosquitos Anopheles quadrimaculatus são vistos principalmente no leste da América do Norte. Eles são '
                            'encontrados no leste dos Estados Unidos, na região sul do Canadá e em partes do México ao sul de Vera Cruz. '
                            'A maior abundância ocorre no sudeste dos EUA (Carpenter et al. 1946, Carpenter e LaCasse 1955).',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Os adultos anofelinos repousam com o abdômen posicionado em um ângulo discreto em relação à superfície, enquanto outras '
                            'espécies mantêm o corpo paralelo à superfície, o que os torna fáceis de identificar quando sentados na pele '
                            '(Rutledge et al. 2005). As espécies do gênero Anopheles têm palpos longos aproximadamente iguais em comprimento à tromba. '
                            'São mosquitos muito escuros, cobertos de pêlos castanhos escuros a pretos. Anopheles quadrimaculatus possui escamas escuras '
                            'nas asas com manchas de escamas formando quatro manchas mais escuras na asa (Carpenter e LaCasse 1955).As fêmeas depositam'
                            ' os ovos individualmente na superfície da água. Os locais preferidos para oviposição incluem riachos de água doce, lagoas e '
                            'lagos com vegetação aquática (Carpenter e LaCasse 1955).',
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
