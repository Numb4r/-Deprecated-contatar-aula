import 'package:aula_online/app/shared/components/containerDashboard.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/screens/choiceScreen/components/buttons.dart';

class ChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: containerDashboard(
        context,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "Logo",
              child: CircleAvatar(
                child: Image.asset("assets/lifesaver-hi.png"),
              ),
            ),
            choiceScreenButton(context,
                text: "Aula Avulsa", route: "/choiceMateria"),
            choiceScreenButton(context,
                text: "Pacote de Aulas", route: "/loginPage"),
          ],
        ),
      ),
    );
  }
}
