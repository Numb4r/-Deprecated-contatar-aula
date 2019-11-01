import 'package:flutter/material.dart';
import 'package:aula_online/app/shared/models/Materia.dart';

final List<Materia> materias = [
  Materia(nome: "Fisica", icone: Icons.panorama_fish_eye),
  Materia(nome: "Matematica", icone: Icons.party_mode),
  Materia(nome: "Portugues", icone: Icons.pause_circle_filled)
];

Widget listTileMateria(context, index) {
  return ListTile(
    title: Text(materias[index].nome),
    leading: Icon(materias[index].icone),
    onTap: () => Navigator.of(context).pushNamed("/choiceProfessor"),
  );
}

Widget listBuilderMateria() {
  return ListView.builder(
    itemCount: materias.length,
    itemBuilder: listTileMateria,
  );
}
