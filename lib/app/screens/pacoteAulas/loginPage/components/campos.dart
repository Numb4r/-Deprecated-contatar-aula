import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Widget campos(controller,
    {label = "", hiddentext = false, keyboardType = TextInputType.text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    child: TextFormField(
      controller: controller,
      validator: (value) {
        if (value.isEmpty) {
          if (label.toString().contains("Email")) {
            return "Insira seu email";
          }
          if (label.toString().contains("Senha")) {
            return "Insira sua senha";
          }
        } else {
          if (label.toString().contains("Email") &&
              !EmailValidator.validate(value)) {
            return "Insira um email valido";
          }
        }
      },
      obscureText: hiddentext,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        labelText: label,
        labelStyle: TextStyle(
          backgroundColor: Colors.transparent,
        ),
      ),
    ),
  );
}
