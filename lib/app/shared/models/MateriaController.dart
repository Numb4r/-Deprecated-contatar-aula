import 'package:aula_online/app/shared/models/Materia.dart';
import 'package:flutter/material.dart';

class MateriaController {
  final List<Materia> materias = [
    Materia(nome: "Fisica", icone: Icons.panorama_fish_eye),
    Materia(nome: "Matematica", icone: Icons.party_mode),
    Materia(nome: "Portugues", icone: Icons.pause_circle_filled)
  ];
}
