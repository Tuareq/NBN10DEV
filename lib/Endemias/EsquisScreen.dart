import 'package:flutter/material.dart';

class EsquisScreen extends StatelessWidget {
  const EsquisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esquistosomose'),
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
                    'asset/virus/esquistossomose160.png',
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
                        text:'É uma doença parasitária, diretamente relacionada ao saneamento precário, causada pelo Schistosoma mansoni. '
                            'A pessoa adquire a infecção quando entra em contato com água doce onde existam caramujos infectados pelos vermes causadores da esquistossomose. ',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'A transmissão da esquistossomose ocorre quando o indivíduo, hospedeiro definitivo, infectado elimina os ovos do verme por meio das fezes humanas. Em contato com a água, os ovos eclodem e liberam larvas que infectam os caramujos, hospedeiros intermediários que vivem nas águas doces. Após quatro '
                            'semanas, as larvas abandonam o caramujo na forma de cercarias e ficam livres nas águas naturais. O ser humano adquire a doença pelo contato '
                            'com essas águas.',
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
                        text: 'O diagnóstico da esquistossomose é feito por meio de exames laboratoriais de fezes. '
                            'É possível detectar, por meio desses exames, os ovos do parasita causador da doença. O tratamento da esquistossomose, '
                            'para os casos simples, é em dose única e supervisionado feito por meio do medicamento Praziquantel, receitado pelo médico e '
                            'distribuído .  Os casos graves geralmente requerem internação hospitalar e até mesmo tratamento cirúrgico.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'No Brasil: estima-se que cerca de 1,5 milhões de pessoas vivem em áreas sob o risco de contrair a doença. Os estados das '
                            'regiões Nordeste e Sudeste são os mais afetados sendo que a ocorrência está diretamente ligada à presença dos moluscos '
                            'transmissores.A transmissão endêmicas que compreendem os Estados de Alagoas, Bahia, Pernambuco, Rio Grande do Norte, Paraíba, Sergipe, '
                            'Espírito Santo e Minas Gerais.',
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
