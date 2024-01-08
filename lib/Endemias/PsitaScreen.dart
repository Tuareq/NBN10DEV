import 'package:flutter/material.dart';

class PsitaScreen extends StatelessWidget {
  const PsitaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Psitacose'),
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
                    'asset/virus/psitacose160.png',
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
                            'Psitacose é uma doença causada por bactérias (germes) encontradas principalmente em aves. Embora esta doença ocorra em geral '
                            'em aves, ela também pode ocorrer em pessoas. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Qualquer pessoa pode desenvolver a doença se ficar exposta à bactéria da psitacose. As pessoas sob maior risco são '
                            'aquelas que têm aves ou que trabalham com estes animais, como, por exemplo, criadores de pássaros, os que '
                            'trabalham no processamento de carnes de aves, avicultores, veterinários e seus auxiliares e funcionários de '
                            'lojas de animais de estimação ("pet shops").',
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
                            'Para causar a doença, os germes precisam ser inalados. Isto geralmente ocorre quando alguém inspira a poeira que contém '
                            'fezes secas ou secreções secas de aves infectadas. As pessoas também podem ficar doentes se não lavarem bem as mãos '
                            'após tocar em penas de aves doentes ou se encostarem a boca no bico dessas aves. Esses germes não são transmitidos '
                            'facilmente de pessoa para pessoa. ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                            'Os sintomas da psitacose em pessoas podem ser leves ou muito graves. Os sintomas mais comuns são febre, calafrios, '
                            'dor de cabeça, cansaço e tosse seca. Muitas das pessoas infectadas desenvolvem uma pneumonia. As pessoas mais velhas'
                            ' tendem a desenvolver uma forma mais séria da doença, em especial se não forem tratadas. Os sintomas podem começar '
                            'entre 5 e 21 dias após a infecção, mas na maior parte das vezes começam entre 7 e 14 dias. A psitacose pode ser '
                            'tratada com antibióticos',
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
