import 'package:flutter/material.dart';

class NegraScreen extends StatelessWidget {
  const NegraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peste Negra ou Bubonica'),
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
                    'asset/virus/bacBubonica160.png',
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
                        text:'A peste, conhecida como peste negra ou peste bubônica, é uma doença grave causada pela bactéria Yersinia pestis, '
                            'normalmente encontrada nas pulgas que os ratos carregam em seu corpo.A doença ficou popularmente conhecida como '
                            '“peste negra” por conta do escurecimento das extremidades do corpo causado pela gangrena. Estima-se que ela tenha '
                            'sido responsável pela morte de cerca de um terço da população europeia entre 1347 e 1353.',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: ' Peste negra(Tipo mais comum da doença):Cansaço excessivo;Febre alta;Gânglios inchados e doloridos; Dores fortes de cabeça; '
                            'Alterações na cognição e na marcha.Peste septicêmicaNormalmente, ocorre como complicação da peste bubônica. Nesse caso, '
                            'a bactéria se espalha para diversos órgãos do corpo. Os sintomas são:Febre muito alta Hipotensão arterial;Falta de ar; '
                            'Vômitos e diarreia;Hemorragia cutânea, causando o escurecimento das extremidades do corpo/ gangrena.',
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
                        text: 'Peste pneumônica Pode acontecer de forma primária ou como complicação da peste bubônica ou septicêmica. '
                            'Os sintomas são: Dificuldade para respirar; Dor no peito; Tosse com sangue. Aos '
                            'primeiros sintomas, o paciente deve procurar imediatamente o hospital, o paciente faz o uso de antibióticos. '
                            'Além disso, ele permanece isolado para não contaminar outras.Para evitar a doença, é aconselhado livrar-se do acúmulo de lixo,'
                            ' papelão e revistas velhas, para que os ratos não utilizem esses materiais como ninho. '
                            'É importante realizar também o controle de pulgas de animais domésticos.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O diagnóstico é realizado por meio de um exame que colhe as secreções, ou por amostras de sangue. '
                            'Em alguns casos, o médico pode solicitar também uma biópsia do gânglio alterado, para confirmar a presença '
                            'da bactéria Yersinia pestis.',
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
