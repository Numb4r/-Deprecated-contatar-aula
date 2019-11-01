import 'package:flutter/material.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:aula_online/app/screens/choiceProfessor/components/listBuilder.dart';

class ChoiceProfessor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: listBuilderProfessor(),
    );
  }
}
