import 'package:aula_online/app/screens/aulaAvulsa/choiceProfessor/components/CustomDialog.dart';
import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/models/Professor.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final List<Professor> professores = [
  Professor(
      nome: "Yuri",
      avatarURL: "https://randomuser.me/api/portraits/men/83.jpg",
      bio: "Cansado",
      precoAula: 3.10,
      horarios: ["10:20", "22:40"],
      materia: "Programacao"),
  Professor(
      nome: "Marinez",
      avatarURL: "https://randomuser.me/api/portraits/women/83.jpg",
      bio: "Cansado",
      precoAula: 5.80,
      horarios: ["9:30", "8:20"],
      materia: "Fisica")
];
Widget listTileProfessor(context, index) {
  final avulsa = Provider.of<CompraAvulsaBloc>(context);
  return ListTile(
      leading: CircleAvatar(
        child: Image.network(professores[index].avatarURL),
      ),
      title: Text(professores[index].nome),
      onLongPress: () {
        showDialog(
          context: context,
          child: CustomDialog(
            professor: professores[index],
          ),
        );
      },
      onTap: () {
        avulsa.professor = professores[index];
        Navigator.of(context).pushNamed(Routes.ChoiceHorario.toString());
      });
}

Widget listBuilderProfessor(avulsa) {
  int Function() count = () {
    int foo = 0;
    for (var item in professores) {
      foo += item.materia == avulsa.materia ? 1 : 0;
    } //TODO:Filtrar os professores pela materia
    return foo;
  };
  return ListView.builder(
    itemCount: professores.length,
    itemBuilder: listTileProfessor,
  );
}
