import 'package:flutter/material.dart';

class ToxoScreen extends StatelessWidget {
  const ToxoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toxoplasma Gondii'),
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
                    'asset/virus/toxoplasmose160.png',
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
                        'A toxoplasmose é uma infecção causada por um protozoário chamado “Toxoplasma Gondii”, encontrado nas fezes de gatos e outros felinos, que pode se '
                            'hospedar em humanos e outros animais. É causada pela ingestão de água ou alimentos contaminados e é uma das zoonoses (doenças transmitidas '
                            'por animais) mais comuns em todo o mundo. ',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A maioria das pessoas infectadas pela primeira vez não apresenta sintomas e, por isso, não precisam de tratamentos específicos. A doença em outros estágios, no entanto, pode trazer complicações, como sequelas pela infecção congênita (gestantes para os filhos), toxoplasmose ocular'
                            ' e toxoplasmose cerebral em pessoas que têm o sistema imunológico enfraquecido, como transplantados, pacientes infectados com o '
                            'HIV ou em tratamento oncológico.',
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
                        'As principais vias de transmissão da toxoplasmose são: Via oral (ingestão de alimentos e água contaminados) '
                            'Congênita (transmitido de mãe para filho durante gestação), sendo raros os casos de transmissão por inalação '
                            'de aerossóis contaminados, inoculação acidental, transfusão sanguínea e transplante de órgãos.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:
                        'A toxoplasmose normalmente evolui sem sequelas em pessoas com boa imunidade, desta forma não se recomenda tratamento específico, apenas tratamento para combater os sintomas. Pacientes com imunidade'
                            ' comprometida ou que já tenham desenvolvido complicações da doença (cegueira, diminuição auditiva) são encaminhados para acompanhamento '
                            'médico especializado.',
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
