import 'package:aula_online/app/screens/pacoteAulas/loginPage/components/loginButton.dart';
import 'package:aula_online/app/screens/pacoteAulas/loginPage/components/campos.dart';
import 'package:aula_online/app/screens/pacoteAulas/loginPage/components/facebookButton.dart';
import 'package:aula_online/app/screens/pacoteAulas/loginPage/components/googleButton.dart';
import 'package:aula_online/app/screens/pacoteAulas/loginPage/components/registrarButton.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
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
              campos(emailcontroller,
                  label: "Email", keyboardType: TextInputType.emailAddress),
              campos(passwordcontroller, hiddentext: true, label: "Senha"),
              buttonSubmit(context, _key),
              registerButton(context),
              googleButton(context),
              facebookButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
