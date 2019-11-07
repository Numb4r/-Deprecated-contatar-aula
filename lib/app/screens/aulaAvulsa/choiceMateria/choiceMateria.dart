import 'package:aula_online/app/screens/aulaAvulsa/choiceMateria/components/listBuilder.dart';

import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:flutter/material.dart';

class ChoiceMateria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: listBuilderMateria(),
    );
  }
}
