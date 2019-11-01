import 'package:aula_online/app/shared/models/Professor.dart';
import 'package:flutter/material.dart';

final List<Professor> professores = [
  Professor(
      nome: "Yuri",
      avatarURL: "https://randomuser.me/api/portraits/men/83.jpg",
      bio: "Cansado",
      horarios: ["9:30", "8:20"],
      materia: "Programacao")
];
Widget listTileProfessor(context, index) {
  return ListTile(
    leading: CircleAvatar(
      child: Image.network(professores[index].avatarURL),
    ),
    title: Text(professores[index].nome),
  );
}

Widget listBuilderProfessor() {
  return ListView.builder(
    itemCount: professores.length,
    itemBuilder: listTileProfessor,
  );
}
