import 'package:flutter/material.dart';

class AlbopictusScreen extends StatelessWidget {
  const AlbopictusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aedes Albopictus'),
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
                    'asset/mosquito/AedesAlbopictus140.png', // Substitua pelo caminho correto da sua imagem
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
                            'Originário do sudeste da Ásia, o Aedes albopictus é um mosquito silvestre, que se adaptou ao ambiente urbano, suburbano '
                            'e rural. É encontrado com maior frequência em locais de menor concentração humana e maior cobertura vegetal.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Embora utilize depósitos artificiais, como o Ae. aegypti, deposita seus ovos especialmente em criadouros naturais, como bromélias e cascas '
                            'de frutas até buracos de árvore, situados do entorno das casas até longas distâncias em matas secundárias. Nas últimas décadas,'
                            'o Aedes Albopictus disseminou-se para a África, a Europa e as Américas.',
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
                            'Nas últimas décadas, o Ae albopictus disseminou-se para a África, a Europa e as Américas, principalmente devido ao '
                            'comércio internacional de pneus usados. Depositados no interior dos pneus, os ovos são resistentes à dessecação e '
                            'permanecem viáveis por vários meses na ausência de água.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Embora seja nativo das regiões tropical e subtropical, '
                            'vem se adaptando com sucesso a áreas mais frias. Os ovos das cepas de zonas temperadas são mais tolerantes ao frio, '
                            'chegando a suportar a neve e temperaturas abaixo de zero. A variante europeia do Ae albopictus passa por um período de '
                            'desenvolvimento reduzido (diapausa) durante os meses de inverno.No Brasil, foi detectado pela primeira vez na década de 1980, '
                            'nos estados de Minas Gerais e do Rio de Janeiro. Aos poucos, foi invadindo estados vizinhos, como Espírito Santo e São Paulo.',
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
