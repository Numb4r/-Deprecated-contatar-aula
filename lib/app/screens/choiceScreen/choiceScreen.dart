import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/components/containerDashboard.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/screens/choiceScreen/components/buttons.dart';
import 'package:provider/provider.dart';

class ChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final aa = Provider.of<CompraAvulsaBloc>(context);
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
                text: "Aula Avulsa", route: Routes.ChoiceMateria.toString()),
            choiceScreenButton(context,
                text: "Pacote de Aulas", route: Routes.LoginPage.toString()),
          ],
        ),
      ),
    );
  }
}
