import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/components/SubmitButton.dart';
import 'package:aula_online/app/shared/components/TextInputFormField.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final avulsa = Provider.of<CompraAvulsaBloc>(context);
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
                  onPressed: () {
                    avulsa.nome = nome.text;
                    avulsa.email = email.text;
                    avulsa.telefone = telefone.text;
                    Navigator.pushNamed(
                        context, Routes.MetodoPagamento.toString());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
