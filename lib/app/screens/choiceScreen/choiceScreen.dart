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
            flatButtonChoiceScreen(context,
                text: "Aula Avulsa", route: "/choiceMateria"),
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                flatButtonChoiceScreen(context,
                    text: "Pacote de Aulas", route: "/loginPage"),
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
          ],
        ),
      ),
    );
  }
}
