import 'package:flutter/material.dart';

class TifoScreen extends StatelessWidget {
  const TifoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tifo'),
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
                    'asset/virus/bacTifo160.png',
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
                        text:'O tifo epidêmico, popularmente chamado simplesmente de tifo, é uma doença epidêmica transmitida pelo '
                            'piolho humano do corpo e causada pela bactéria Rickettsia prowazekii.Atualmente, o termo tifo também '
                            'pode designar uma série de doenças infecciosas agudas, causadas por rickettsias, caracterizadas por dores '
                            'de cabeça, calafrio, febre, dor no corpo e nas articulações, manchas vermelhas e toxemia (substâncias tóxicas '
                            'no sangue), que duram cerca de duas ou três semanas. O tifo não tem nenhuma relação com a febre tifóide, causada '
                            'pelas Salmonellas.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: 'Causado pela bactéria Rickettsia prowazekii, ele é transmitido pelo piolho humano do corpo Pediculus humanus '
                            'corporis ou, mais raramente, pelo piolho dos cabelos. A transmissão se dá quando o piolho excreta suas fezes, '
                            'liberando bactérias que invadem o corpo humano através de feridas invisíveis na pele.',
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
                        text: 'Tifo murino (ou endêmico) – Os ratos são os principais vetores da doença causada pela bactéria Rickettsia mooseri.'
                            ' Assim como ocorre na peste, o tifo murino é transmitido para o homem quando há um grande número de roedores '
                            'contaminados (epizootia)',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O tempo de incubação do tifo exantemático varia de 1 a 2 semanas, mas, na maior parte dos casos, os sintomas '
                            'ficam evidentes dentro de 12 dias. A febre alta costuma surgir após duas semanas e, dentro de quatro a sete dias, '
                            'aparecem as manchas. A mortalidade da doença é de cerca de 10 a 40% dos casos não tratados, mas em pessoas maiores de '
                            '50 anos, essa taxa pode subir para 60%. O paciente deve ser medicado com antibióticos. Existe uma vacina, mas ela só é '
                            'usada eventualmente.',
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
