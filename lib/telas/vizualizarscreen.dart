import 'package:flutter/material.dart';

import 'Home.dart';

class Rotas {
  static var dadosRelatorio;

  static Map<String, WidgetBuilder> gerarRotas() {
    return {
      // Rota inicial do aplicativo
      "/": (_) => const Home(),

      // Rota para visualizar um relatório
      "/visualizar-relatorio": (_) => VisualizarRelatorioScreen(dadosRelatorio: {dadosRelatorio: dadosRelatorio},),
    };
  }
}

class VisualizarRelatorioScreen extends StatelessWidget {
  const VisualizarRelatorioScreen({Key? key, required this.dadosRelatorio})
      : super(key: key);

  final Map<String, dynamic> dadosRelatorio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Relatório ARM"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildFields(),
        ),
      ),
    );
  }

  List<Widget> _buildFields() {
    final List<Widget> fields = [];

    final data = dadosRelatorio['data'];
    if (data is List) {
      for (var item in data) {
        if (item is Map<String, dynamic> && item.containsKey('nome') && item.containsKey('valor')) {
          final label = item['nome'];
          final value = item['valor'];

          fields.add(_buildField(label, value));
        }
      }
    }

    return fields;
  }

  Widget _buildField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
        const SizedBox(height: 16),
      ],
    );
  }
}
