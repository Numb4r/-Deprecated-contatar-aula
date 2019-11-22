import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/models/Professor.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget listBuilder(avulsa) {
  final Professor professorEscolhido = avulsa.professor;
  return ListView.builder(
    itemBuilder: listTile,
    itemCount: professorEscolhido.horarios.length,
  );
}

Widget listTile(BuildContext context, int index) {
  final avulsa = Provider.of<CompraAvulsaBloc>(context);
  final Professor professorEscolhido = avulsa.professor;

  return ListTile(
    title: Text(professorEscolhido.horarios[index]),
    onTap: () {
      avulsa.horario = professorEscolhido.horarios[index];
      Navigator.of(context).pushNamed(Routes.CadastroAvulsa.toString());
    },
  );
}
