import 'package:aula_online/app/screens/aulaAvulsa/choiceHorario/components/listBuilder.dart';
import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:provider/provider.dart';

class ChoiceHorario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final avulsa = Provider.of<CompraAvulsaBloc>(context);

    return Scaffold(
      appBar: title(),
      body: listBuilder(avulsa),
    );
  }
}
