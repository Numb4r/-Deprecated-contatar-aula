import 'package:aula_online/app/shared/models/Professor.dart';

class ProfessorController {
  List<Professor> professores = [
    Professor(
      nome: "Yuri",
      avatarURL: "https://randomuser.me/api/portraits/men/83.jpg",
      bio: "Cansado",
      horarios: ["9:30", "8:20"],
      materia: "Programacao",
      precoAula: 3.10,
    ),
    Professor(
      nome: "Marinez",
      avatarURL: "https://randomuser.me/api/portraits/women/83.jpg",
      bio: "Cansado",
      horarios: ["10:00", "14:00"],
      materia: "Matematica",
      precoAula: 2.80,
    )
  ];
}
