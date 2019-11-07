import 'package:aula_online/app/screens/aulaAvulsa/choiceHorario/components/listBuilder.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';

class ChoiceHorario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: listBuilder(),
    );
  }
}
