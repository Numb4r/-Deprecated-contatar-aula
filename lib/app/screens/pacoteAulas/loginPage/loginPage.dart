import 'package:aula_online/app/screens/pacoteAulas/loginPage/components/googleButton.dart';
import 'package:aula_online/app/shared/components/SubmitButton.dart';
import 'package:aula_online/app/shared/components/TextInputFormField.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox.fromSize(size: Size(0, 150)),
              TextInputFormField(emailcontroller,
                  label: "Email", keyboardType: TextInputType.emailAddress),
              TextInputFormField(passwordcontroller,
                  hiddentext: true, label: "Senha"),
              SubmitButton(
                label: "Enviar",
                onPressed: () => Navigator.pushReplacementNamed(
                    context, Routes.DashBoard.toString()),
              ),
              SubmitButton(
                label: "Registrar",
              ),
              googleButton(context),
              // facebookButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
