import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:flutter/material.dart';

class ResumoAvulsa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: FlatButton(
        onPressed: () =>
            Navigator.popUntil(context, ModalRoute.withName('/choiceScreen')),
        child: null,
      ),
    );
  }
}
