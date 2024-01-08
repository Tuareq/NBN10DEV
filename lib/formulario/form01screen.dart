import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path; // Import with an alias
import 'package:path_provider/path_provider.dart';
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:permission_handler/permission_handler.dart';

class Form01Screen extends StatefulWidget {
  const Form01Screen({Key? key}) : super(key: key);

  @override
  State<Form01Screen> createState() => _Form01ScreenState();
}

class _Form01ScreenState extends State<Form01Screen> {
  final _firebaseAuth = FirebaseAuth.instance;

  // Dados do formulário
  final List<List<String>> _data = [];

  // Controles do formulário
  final List<TextEditingController> _controllers = [];

  // Nomes dos campos
  final List<String> _fieldNames = [
    'Municipio',
    'Bairro',
    'Cat Local',
    'Zona',
    'Semana Epidemiológica',
    'Armadilha Controle',
    'Endereço',
    'Nº Quarteirão',
    'Tipo de Imóvel',
    'Identificação ARM',
    'Data',
    'Localização',
    'Chave - Matricula',
    'Nº Tubito',
    'Nº de tubitos coletados',
    'Ocorrência',
    'Ovos',
    'Larvas',
    'AEG',
    'ALB',
    'Outro',
    'Total de quarteirões',
    'Total de imóveis',
    'Total de armadilhas inspecionadas',
    'Total de armadilhas positivas',
    'Total de tubitos',
    'Total de ovos',
    'Total de larvas',
    'Total AEG',
    'Total AIB',
    'Total de outros',
    'Assinatura Agente',
    'Assinatura do laboratorista',
    'Assinatura do supervisor',
  ];

  // Obtém o caminho da pasta documentos do celular
  Future<String> getApplicationDocumentsDirectoryPath() async {
    Directory directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  // Salva os dados do formulário no arquivo
  Future<void> salvarFormulario() async {
    // Obtém os dados do formulário dos controles do formulário
    List<String> dados = [];
    for (int i = 0; i < _fieldNames.length; i++) {
      dados.add(_controllers[i].text);
    }
    BuildContext currentContext = context;

    // Solicite a permissão
    PermissionStatus status = await Permission.storage.request();

    // Verifique se a permissão foi concedida
    if (status.isGranted) {
      try {
        // Obtém o diretório de documentos
        Directory documentsDirectory = await getApplicationDocumentsDirectory();

        // Define o nome do arquivo using the alias 'path'
        String filePath =
            path.join(documentsDirectory.path, 'Formulário ARM VE.txt');

        // Imprime o caminho do arquivo para depuração
        if (kDebugMode) {
          print('Caminho do arquivo: $filePath');
        }

        // Cria o arquivo ou sobrescreve se já existir
        File arquivo = File(filePath);

        // Abre o arquivo em modo de escrita e escreve os dados do formulário
        await arquivo.writeAsString(dados.join('\n'));

        // Imprime os dados do formulário para depuração
        if (kDebugMode) {
          print('Dados do formulário: ${dados.join('\n')}');
        }

        // Verifica se o arquivo existe
        if (await arquivo.exists()) {
          if (kDebugMode) {
            print('Arquivo salvo com sucesso');
          }
        } else {
          if (kDebugMode) {
            print('Falha ao salvar o arquivo');
          }
        }

        // Exibe uma mensagem de confirmação
        ScaffoldMessenger.of(currentContext).showSnackBar(
          const SnackBar(
            content: Text('Formulário salvo com sucesso!'),
          ),
        );
      } catch (e) {
        // Exibe uma mensagem de erro se ocorrer um problema
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao salvar o formulário: $e'),
          ),
        );
        if (kDebugMode) {
          print(e);
        }
      }
    } else {
      // A permissão não foi concedida, mostre uma mensagem ao usuário
      if (kDebugMode) {
        print('Permissão de armazenamento não concedida');
      }
    }
  }

  // Exclui o formulário da pasta documentos do celular
  Future<void> excluirFormulario() async {
    // Obtém o caminho da pasta documentos do celular
    String documentsFolderPath = await getApplicationDocumentsDirectoryPath();

    // Define o arquivo a ser excluído
    String filePath = path.join(documentsFolderPath, 'Formulário ARM VE.txt');
    File arquivo = File(filePath);

    try {
      // Exclui o arquivo
      await arquivo.delete();
      // Exiba uma mensagem de confirmação
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(
        const SnackBar(
          content: Text('Formulário excluído com sucesso!'),
        ),
      );
    } catch (e) {
      // Handle any errors that occur during file deletion
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(
        SnackBar(
          content: Text('Erro ao excluir o formulário: $e'),
        ),
      );
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    super.initState();

    // Inicializa os controles do formulário
    for (int i = 0; i < _fieldNames.length; i++) {
      _controllers.add(TextEditingController());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário ARM VE'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          // Linhas do formulário
          Expanded(
            child: ListView.builder(
              itemCount: 34, // Número de campos no formulário
              itemBuilder: (context, index) {
                if (index < _fieldNames.length) {
                  return TextField(
                    controller: _controllers[index],
                    decoration: InputDecoration(
                      labelText: _fieldNames[index],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),

          // Botão para enviar o formulário
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.send),
                color: Colors.lightBlue,
                onPressed: () {
                  // Obtém os dados do formulário dos controles do formulário

                  List<Map<String, dynamic>> dados = [];
                  for (int i = 0; i < _fieldNames.length; i++) {
                    dados.add({
                      'nome': _fieldNames[i],
                      'valor': _controllers[i].text,
                    });
                  }

                  // Envia os dados do formulário ao Firebase

                  FirebaseFirestore.instance.collection('PNCD-ARM').doc("Form ARM").set({
                    'data': dados,
                    'createdAt': Timestamp.now(),
                    'updatedAt': Timestamp.now(),
                  });

                  // Exiba uma mensagem de confirmação
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Formulário enviado com sucesso!'),
                    ),
                  );
                },
              ),
              // Botão para salvar o formulário
              IconButton(
                icon: const Icon(Icons.save),
                color: Colors.lightBlue,
                onPressed: () async {
                  await salvarFormulario();

                  // Obtém os dados do formulário dos controles do formulário
                  BuildContext currentContext = context;

                  List<String> dados = [];
                  for (int i = 0; i < _fieldNames.length; i++) {
                    dados.add(_controllers[i].text);
                  }

                  // Salva os dados do formulário no arquivo
                  String filePath = path.join(
                    await getApplicationDocumentsDirectoryPath(),
                    'Formulario_ARM_VE.txt',
                  );

                  File arquivo = File(filePath);
                  // Grava os dados do formulário no arquivo
                  await arquivo.writeAsString(dados.join('\n'));

                  // Exiba uma mensagem de confirmação
                  ScaffoldMessenger.of(currentContext).showSnackBar(
                    const SnackBar(
                      content: Text('Formulário salvo com sucesso!'),
                    ),
                  );
                },
              ),

              IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.lightBlue,
                onPressed: () {
                  // Limpa os dados do formulário
                  for (int i = 0; i < _fieldNames.length; i++) {
                    _controllers[i].text = '';
                  }

                  // Exiba uma mensagem de confirmação
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Formulário excluído com sucesso!'),
                    ),
                  );
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
