import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Widget campoCadastro(
    {String label,
    TextEditingController controller,
    TextInputType keyboardType}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    child: TextFormField(
      keyboardType: keyboardType,
      autofocus: label.contains("Nome") ? true : false,
      controller: controller,
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
      validator: (value) {
        if (value.isEmpty) {
          if (label.toString().contains("Email")) {
            return "Insira seu email";
          }
          if (label.toString().contains("Nome")) {
            return "Insira seu nome";
          }
          if (label.toString().contains("Telefone")) {
            return "Insira  seu telefone";
          }
        } else {
          if (label.toString().contains("Email") &&
              !EmailValidator.validate(value)) {
            return "Insira um email valido";
          }
        }
        return null;
      },
    ),
  );
}
