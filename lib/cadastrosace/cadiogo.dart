import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadDiogo extends StatefulWidget {
  const CadDiogo({Key? key}) : super(key: key);

  @override
  State<CadDiogo> createState() => _CadDiogoState();
}

class _CadDiogoState extends State<CadDiogo> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _matriculaController = TextEditingController();
  final _phoneController = TextEditingController();
  final _equipeController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Chave global para o formulário

  // Defina a cor de fundo cinza claro como uma variável
  final Color lightGreyColor = const Color(0xFFE0E0E0);

  @override
  void initState() {
    super.initState();
    loadSavedData();
  }

  Future<void> loadSavedData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nomeController.text = prefs.getString('user1_nome') ?? '';
      _emailController.text = prefs.getString('user1_email') ?? '';
      _matriculaController.text = prefs.getString('user1_matricula') ?? '';
      _phoneController.text = prefs.getString('user1_telefone') ?? '';
      _equipeController.text = prefs.getString('user1_equipe') ?? '';
    });
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user1_nome', _nomeController.text);
    await prefs.setString('user1_email', _emailController.text);
    await prefs.setString('user1_matricula', _matriculaController.text);
    await prefs.setString('user1_telefone', _phoneController.text);
    await prefs.setString('user1_equipe', _equipeController.text);
  }

  void _clearForm() {
    setState(() {
      _nomeController.text = '';
      _emailController.text = '';
      _matriculaController.text = '';
      _phoneController.text = '';
      _equipeController.text = '';
    });
  }

  final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro pessoal'),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey, // Usar a chave do formulário
            child: Column(
              children: [
                TextFormField(
                  controller: _nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    filled: true,
                    fillColor: lightGreyColor, // Usar a cor personalizada
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu nome e sobrenome';
                    }

                    final parts = value.split(' ');

                    if (parts.length < 2) {
                      return 'Por favor, insira seu nome e sobrenome';
                    }

                    return null;
                  },
                ),
                TextFormField(
                  controller: _equipeController,
                  decoration: InputDecoration(
                    labelText: 'Equipe',
                    filled: true,
                    fillColor: lightGreyColor, // Usar a cor personalizada
                  ),
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    filled: true,
                    fillColor: lightGreyColor, // Usar a cor personalizada
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira seu e-mail';
                    }
                    if (!value.contains('@')) {
                      return 'O e-mail deve conter o símbolo "@"';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _matriculaController,
                  decoration: InputDecoration(
                    labelText: 'Matrícula',
                    filled: true,
                    fillColor: lightGreyColor, // Usar a cor personalizada
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  inputFormatters: [phoneMaskFormatter],
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    hintText: '(00) 12345-6789', // Exemplo de formato esperado
                    filled: true, // Define o campo como preenchido
                    fillColor: lightGreyColor, // Define a cor de preenchimento
                    border: OutlineInputBorder(
                      // Define as bordas do campo
                      borderRadius: BorderRadius.circular(8.0), // Raio da borda
                      borderSide: BorderSide.none, // Remove as bordas laterais
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira um telefone válido.';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Alinhar os ícones ao centro
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Salvar os dados no dispositivo
                          saveData();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Cadastro realizado com sucesso!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                        }
                      },
                      icon: const Icon(
                        Icons.save,
                        color: Colors.lightBlue, // Define a cor do ícone
                      ),
                      tooltip: 'Salvar', // Adicione um tooltip
                    ),
                    const SizedBox(width: 16), // Espaçamento entre os ícones
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Confirmação'),
                            content: const Text(
                                'Tem certeza de que deseja limpar os campos?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () {
                                  _clearForm();
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Limpar'),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.lightBlue, // Define a cor do ícone
                      ),
                      tooltip: 'Limpar Campos', // Adicione um tooltip
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
