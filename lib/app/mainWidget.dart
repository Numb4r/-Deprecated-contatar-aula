import 'package:aula_online/app/screens/aulaAvulsa/cadastroAvulsa/cadastroAvulsa.dart';
import 'package:aula_online/app/screens/aulaAvulsa/cadastroCartao/cadastroCartao.dart';
import 'package:aula_online/app/screens/aulaAvulsa/choiceHorario/choiceHorario.dart';
import 'package:aula_online/app/screens/aulaAvulsa/choiceMateria/choiceMateria.dart';
import 'package:aula_online/app/screens/aulaAvulsa/choiceProfessor/choiceProfessor.dart';
import 'package:aula_online/app/screens/aulaAvulsa/metodosPagamento/metodosPagamento.dart';
import 'package:aula_online/app/screens/aulaAvulsa/resumoAvulsa/resumoAvulsa.dart';
import 'package:aula_online/app/screens/choiceScreen/choiceScreen.dart';
import 'package:aula_online/app/screens/pacoteAulas/dashboard/dashboard.dart';
import 'package:aula_online/app/screens/pacoteAulas/loginPage/loginPage.dart';
<<<<<<< HEAD
import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/blocs/theme.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:aula_online/app/shared/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/screens/splashScreen/splashscreen.dart';
import 'package:provider/provider.dart';
=======
import 'package:aula_online/app/screens/splashScreen/splashscreen.dart';
import 'package:flutter/material.dart';
>>>>>>> 7453853ae8d62ca7d2b396b3f497a61bf7cc21c4

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeChanger>(
          builder: (_) => ThemeChanger(appThemeData["OrangeLight"]),
        ),
        ChangeNotifierProvider<CompraAvulsaBloc>.value(
          value: null,
        )
      ],
      child: StartApp(),
    );
  }
}

class StartApp extends StatelessWidget {
  const StartApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      initialRoute: Routes.SplashScreen.toString(),
      routes: {
<<<<<<< HEAD
        Routes.SplashScreen.toString(): (context) => SplashScreen(),
        Routes.ChoiceScreen.toString(): (context) => ChoiceScreen(),
        Routes.ChoiceMateria.toString(): (context) => ChoiceMateria(),
        Routes.ChoiceProfessor.toString(): (context) => ChoiceProfessor(),
        Routes.ChoiceHorario.toString(): (context) => ChoiceHorario(),
        Routes.CadastroAvulsa.toString(): (context) => CadastroAvulsa(),
        Routes.MetodoPagamento.toString(): (context) => MetodosPagamento(),
        Routes.CadastroCartao.toString(): (context) => CadastroCartao(),
        Routes.ResumoAvulsa.toString(): (context) => ResumoAvulsa(),
        Routes.LoginPage.toString(): (context) => LoginPage(),
        Routes.DashBoard.toString(): (context) => DashBoard(),
=======
        // '/splashScreen': (context) => SplashScreen(),
        '/splashScreen': (context) => SplashScreen(),
        '/choiceScreen': (context) => ChoiceScreen(),
        '/choiceMateria': (context) => ChoiceMateria(),
        '/choiceProfessor': (context) => ChoiceProfessor(),
        '/choiceHorario': (context) => ChoiceHorario(),
        '/cadastroAvulsa': (context) => CadastroAvulsa(),
        '/metodosPagamento': (context) => MetodosPagamento(),
        '/cadastroCartao': (context) => CadastroCartao(),
        '/resumoAvulsa': (context) => ResumoAvulsa(),
        '/loginPage': (context) => LoginPage(),
        '/dashboard': (context) => DashBoard(),
>>>>>>> 7453853ae8d62ca7d2b396b3f497a61bf7cc21c4
        // '/efetuarLogin': (context) => EfetuarLogin(),
      },
      debugShowCheckedModeBanner: false,
      title: "Aula online",
<<<<<<< HEAD
      //home: CadastroCartao(),
      theme: tema.getTheme(),
=======
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
>>>>>>> 7453853ae8d62ca7d2b396b3f497a61bf7cc21c4
    );
  }
}
