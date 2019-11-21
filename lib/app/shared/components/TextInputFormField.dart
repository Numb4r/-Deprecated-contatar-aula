import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextInputFormField extends StatefulWidget {
  TextEditingController controller;
  TextInputType keyboardType;
  bool hiddentext;
  var label = "";
  TextInputFormField(this.controller,
      {this.hiddentext = false, this.keyboardType, this.label})
      : super();
  @override
  _TextInputFormFieldState createState() => _TextInputFormFieldState();
}

class _TextInputFormFieldState extends State<TextInputFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.hiddentext,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          labelText: widget.label,
        ),
      ),
    );
  }
}

String validator(value, label) {
  if (value.isEmpty) {
    if (label.toString().contains("Email")) {
      return "Insira seu email";
    }
    if (label.toString().contains("Senha")) {
      return "Insira sua senha";
    }
  } else {
    if (label.toString().contains("Email") && !EmailValidator.validate(value)) {
      return "Insira um email valido";
    }
  }
}
