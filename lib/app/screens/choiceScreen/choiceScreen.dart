import 'package:aula_online/app/shared/components/containerDashboard.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
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
<<<<<<< HEAD
            flatButtonChoiceScreen(context,
                text: "Aula Avulsa", route: Routes.ChoiceMateria.toString()),
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                flatButtonChoiceScreen(context,
                    text: "Pacote de Aulas",
                    route: Routes.LoginPage.toString()),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(
                    "10% de Desconto",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ],
            ),
=======
            choiceScreenButton(context,
                text: "Aula Avulsa", route: "/choiceMateria"),
            choiceScreenButton(context,
                text: "Pacote de Aulas", route: "/loginPage"),
>>>>>>> 7453853ae8d62ca7d2b396b3f497a61bf7cc21c4
          ],
        ),
      ),
    );
  }
}
