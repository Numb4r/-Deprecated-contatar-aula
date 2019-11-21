import 'package:aula_online/app/shared/models/Professor.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';

final List<Professor> professores = [
  Professor(
      nome: "Yuri",
      avatarURL: "https://randomuser.me/api/portraits/men/83.jpg",
      bio: "Cansado",
      horarios: ["9:30", "8:20"],
      materia: "Programacao")
];
Widget listBuilder() {
  return ListView.builder(
    itemBuilder: listTile,
    itemCount: professores[0].horarios.length,
  );
}

Widget listTile(BuildContext context, int index) {
  return ListTile(
    title: Text(professores[0].horarios[index]),
    onTap: () =>
        Navigator.of(context).pushNamed(Routes.CadastroAvulsa.toString()),
  );
}
