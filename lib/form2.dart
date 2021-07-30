import 'package:flutter/material.dart';

void main() => runApp(FormularioDois());

class FormularioDois extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
            title: Text('Cadastro de Clientes'),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: <Widget>[
              MeuCheckbox(),
              Form(
                key: _formkey,
                child: Column(
                children: [
                  TextFormField(decoration: InputDecoration(labelText: 'Nome'),
                    //validador q vai receber o texto q o user inseriu.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor informe seu nome completo';
                      }
                      return null;
                    },
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 16.0),),
                  TextFormField(decoration: InputDecoration(labelText: 'Email'),
                    //validador q vai receber o texto q o user inseriu.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor informe um Email válido';
                      }
                      return null;
                    },
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 16.0),),
                  TextFormField(decoration: InputDecoration(labelText: 'Telefone'),
                    //validador q vai receber o texto q o user inseriu.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor informe seu telefone para contato';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        //validar e retorna verdadeiro se o formulário
                        //é válido e retorna falso se a condição não der match
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processando Dados')),
                          );
                        }
                      },
                      child: const Text('Enviar'),
                    ),
                  )
                ],
              ),
              ),
            ],
          )),
    );
  }
}


////Classe

class MeuCheckbox extends StatefulWidget {
  const MeuCheckbox({Key? key}) : super(key: key);

  @override
  State<MeuCheckbox> createState() => _MeuCheckboxState();
}

class _MeuCheckboxState extends State<MeuCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return CheckboxListTile(
      title: Text("Termos de contrato"),
      activeColor: Colors.green,
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );

  }
}
