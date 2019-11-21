import 'package:aula_online/app/screens/aulaAvulsa/cadastroAvulsa/components/buttonSubmit.dart';
import 'package:aula_online/app/screens/aulaAvulsa/cadastroAvulsa/components/campoCadastro.dart';
import 'package:aula_online/app/shared/components/SubmitButton.dart';
import 'package:aula_online/app/shared/components/TextInputFormField.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';

class CadastroAvulsa extends StatefulWidget {
  @override
  _CadastroAvulsaState createState() => _CadastroAvulsaState();
}

class _CadastroAvulsaState extends State<CadastroAvulsa> {
  final nome = TextEditingController();
  final email = TextEditingController();
  final telefone = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: title(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextInputFormField(nome,
                  label: "Nome", keyboardType: TextInputType.text),
              TextInputFormField(email,
                  label: "Email", keyboardType: TextInputType.emailAddress),
              TextInputFormField(telefone,
                  label: "Telefone", keyboardType: TextInputType.phone),
              SubmitButton(
                  label: "Enviar",
                  onPressed: () => Navigator.pushNamed(
                      context, Routes.MetodoPagamento.toString())),
            ],
          ),
        ),
      ),
    );
  }
}
