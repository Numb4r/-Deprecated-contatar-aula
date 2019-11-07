import 'package:flutter/material.dart';

Widget buttonSubmit(context, _formKey) {
  return GestureDetector(
    onTap: () {
      print(_formKey.currentState);
      if (_formKey.currentState.validate()) {}
    },
    child: Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.05,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(
          Radius.circular(45),
        ),
      ),
      child: Text(
        "Enviar",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    ),
  );
}
