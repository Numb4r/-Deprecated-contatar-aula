import 'package:aula_online/app/screens/pacoteAulas/dashboard/components/gridTileDashboard.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          gridTileDashBoard(context,
              icon: FontAwesomeIcons.pen, text: "Comprar pacote de aula"),
          gridTileDashBoard(context,
              icon: FontAwesomeIcons.list, text: "Minhas aulas"),
          gridTileDashBoard(context,
              icon: FontAwesomeIcons.accessibleIcon, text: "Professores"),
          gridTileDashBoard(context,
              icon: FontAwesomeIcons.ad, text: "Configurações")
        ],
      ),
    );
  }
}
