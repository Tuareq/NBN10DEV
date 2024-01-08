import 'package:flutter/material.dart';

class SarnaScreen extends StatelessWidget {
  const SarnaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sarna - Escabiose'),
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
                    'asset/virus/acaroSarna160.png',
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
                        text:'A escabiose ou sarna é uma doença parasitária.Causada pelo ácaro Sarcoptes scabiei. É uma doença contagiosa '
                            'transmitida pelo contato direto interpessoal ou através do uso de roupas contaminadas. O parasita escava túneis sob '
                            'a pele onde a fêmea deposita seus ovos que eclodirão em cerca de 7 a 10 dias dando',
                        style: TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text: ' A doença tem como característica principal a coceira intensa que, geralmente, piora durante a noite. '
                            'A lesão típica da sarna é um pequeno trajeto linear pouco elevado, da cor da pele ou ligeiramente avermelhado e '
                            'que corresponde aos túneis sob a pele. Esta lesão dificilmente é encontrada, pois a escoriação causada pelo ato d'
                            'e coçar a torna irreconhecível. O que se encontra na maioria dos casos são pequenos pontos escoriados ou recobertos '
                            'por crostas em consequência da coçadura. ',
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
                        text: 'Para evitar a doença não use roupas pessoais, roupas de cama ou toalhas emprestadas, evite aglomerações ou contato '
                            'íntimo com pessoas de hábitos higiênicos duvidosos. Em pessoas com bons hábitos higiênicos, a sarna pode ser confundida '
                            'com outras doenças que causam coceira, devendo o diagnóstico correto ser realizado por um médico dermatologista que '
                            'indicará o tratamento ideal para cada caso.',
                        style:
                        TextStyle(fontWeight: FontWeight.bold), // Negrito
                      ),
                      TextSpan(
                        text:'O tratamento da sarna consiste na aplicação de medicamentos sob a forma de loções na pele do corpo todo, do pescoço '
                            'para baixo, mesmo nos locais onde nao aparecem lesões ou coceira. Após terminada a primeira série do tratamento, '
                            'este deve ser repetido uma semana após, para atingir os parasitas que estarão deixando os ovos. Medicamentos para o '
                            'alívio da coceira devem ser utilizados, porém não são os responsáveis pela cura. O tratamento também pode ser realizado '
                            'por via oral, sob a forma de comprimidos tomados em dose única.',
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
