import 'package:aula_online/app/screens/aulaAvulsa/cadastroAvulsa/cadastroAvulsa.dart';
import 'package:aula_online/app/screens/aulaAvulsa/cadastroCartao/cadastroCartao.dart';
import 'package:aula_online/app/screens/aulaAvulsa/choiceHorario/choiceHorario.dart';
import 'package:aula_online/app/screens/aulaAvulsa/choiceMateria/choiceMateria.dart';
import 'package:aula_online/app/screens/aulaAvulsa/choiceProfessor/choiceProfessor.dart';
import 'package:aula_online/app/screens/aulaAvulsa/metodosPagamento/metodosPagamento.dart';
import 'package:aula_online/app/screens/aulaAvulsa/resumoAvulsa/resumoAvulsa.dart';
import 'package:aula_online/app/screens/choiceScreen/choiceScreen.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/screens/splashScreen/splashscreen.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splashScreen',
      routes: {
        '/splashScreen': (context) => SplashScreen(),
        '/choiceScreen': (context) => ChoiceScreen(),
        '/choiceMateria': (context) => ChoiceMateria(),
        '/choiceProfessor': (context) => ChoiceProfessor(),
        '/choiceHorario': (context) => ChoiceHorario(),
        '/cadastroAvulsa': (context) => CadastroAvulsa(),
        '/metodosPagamento': (context) => MetodosPagamento(),
        '/cadastroCartao': (context) => CadastroCartao(),
        '/resumoAvulsa': (context) => ResumoAvulsa(),
      },
      debugShowCheckedModeBanner: false,
      title: "Aula online",
      //home: CadastroCartao(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
