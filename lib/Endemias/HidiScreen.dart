import 'package:flutter/material.dart';

class HidiScreen extends StatelessWidget {
  const HidiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hidiatiose'),
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
                    'asset/virus/hidatiose160.png',
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
                            'A hidatidose (equinococose) é uma doença parasitária que ocorre em duas formas principais: hidatidose cística '
                            '(também conhecida como equinococose) causada pelo Echinococcus granulosus e hidatidose policistica, causada pelos'
                            ' Echinococcus vogeli e Echinococcus oligarthrus. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Os cães, raposas e outros carnívoros abrigam os vermes adultos no intestino e evacuam os ovos do parasita'
                            ' nas fezes. Se os ovos são ingeridos por humanos, eles se desenvolvem em larvas em vários órgãos, principalmente no'
                            ' fígado e nos pulmões.',
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
                            'Após a ingestão dos ovos dos Echinococcus, eles eclodem no trato digestivo e as larvas migram via corrente sanguínea para diversos órgãos onde se desenvolvem e se transformam em cistos. Na maioria dos casos de infecção humana, o desenvolvimento do cisto hidático é assintomático. Os indivíduos podem ser portadores do cisto durante toda a vida sem necessitar de assistência médica e poucos '
                            'são os que desenvolvem alterações graves. As manifestações clínicas estarão relacionadas com o estado físico do cisto assim como sua localização'
                            ' e tamanho.',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Diversos animais herbívoros e onívoros atuam como hospedeiros intermediários do Echinococcus, ao ingerirem ovos de parasitas em solo contaminado e desenvolverem fases larvais parasíticas em suas vísceras. Carnívoros são hospedeiros definitivos do parasita, e podem ser infectados por meio do consumo de vísceras de hospedeiros intermediários que abrigam o parasita '
                            'e também através da eliminação de carcaças infectadas. Os seres humanos são hospedeiros intermediários acidentais e são incapazes de '
                            'transmitir a doença.',
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
