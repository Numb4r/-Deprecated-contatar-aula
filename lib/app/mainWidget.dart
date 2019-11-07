import 'package:aula_online/app/screens/cadastroAvulsa/cadastroAvulsa.dart';
import 'package:aula_online/app/screens/choiceHorario/choiceHorario.dart';
import 'package:aula_online/app/screens/choiceMateria/choiceMateria.dart';
import 'package:aula_online/app/screens/choiceProfessor/choiceProfessor.dart';
import 'package:aula_online/app/screens/choiceScreen/choiceScreen.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/screens/splashScreen/splashscreen.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splashScreen',
      routes: {
        '/splashScreen': (context) => SplashScreen(),
        '/choiceScreen': (context) => ChoiceScreen(),
        '/choiceMateria': (context) => ChoiceMateria(),
        '/choiceProfessor': (context) => ChoiceProfessor(),
        '/choiceHorario': (context) => ChoiceHorario(),
        '/cadastroAvulsa': (context) => CadastroAvulsa(),
      },
      debugShowCheckedModeBanner: false,
      title: "Aula online",
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
