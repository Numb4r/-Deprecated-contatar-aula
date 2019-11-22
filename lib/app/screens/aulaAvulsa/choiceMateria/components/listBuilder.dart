import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/shared/models/Materia.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

final List<Materia> materias = [
  Materia(nome: "Fisica", icone: Icons.panorama_fish_eye),
  Materia(nome: "Matematica", icone: Icons.party_mode),
  Materia(nome: "Portugues", icone: Icons.pause_circle_filled)
];

Widget listTileMateria(context, index) {
  final avulsablock = Provider.of<CompraAvulsaBloc>(context);
  return ListTile(
      title: Text(materias[index].nome),
      leading: Icon(materias[index].icone),
      onTap: () {
        avulsablock.materia = materias[index].nome;
        Navigator.of(context).pushNamed(Routes.ChoiceProfessor.toString());
      });
}

Widget listBuilderMateria() {
  return AnimationLimiter(
    child: ListView.builder(
      itemCount: materias.length,
      itemBuilder: (BuildContext context, int index) {
        return AnimationConfiguration.staggeredList(
          position: index,
          duration: const Duration(milliseconds: 475),
          child: SlideAnimation(
            verticalOffset: 50.0,
            child: FadeInAnimation(
              child: listTileMateria(context, index),
            ),
          ),
        );
      },
    ),
  );
}
