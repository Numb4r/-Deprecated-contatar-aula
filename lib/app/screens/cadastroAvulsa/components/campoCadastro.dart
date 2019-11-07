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
          return "Insira o $label";
        } else {
          return null;
        }
      },
    ),
  );
}
