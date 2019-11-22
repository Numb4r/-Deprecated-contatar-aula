import 'package:aula_online/app/screens/Configs/config.dart';
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
import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/blocs/theme.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:aula_online/app/shared/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:aula_online/app/screens/splashScreen/splashscreen.dart';
import 'package:provider/provider.dart';

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeChanger>(
          builder: (_) => ThemeChanger(),
        ),
        ChangeNotifierProvider<CompraAvulsaBloc>(
          builder: (_) => CompraAvulsaBloc(),
        ),
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
        Routes.ConfigPage.toString(): (context) => ConfigScreen(),
        // '/efetuarLogin': (context) => EfetuarLogin(),
      },
      debugShowCheckedModeBanner: false,
      title: "Aula online",
      //home: CadastroCartao(),
      theme: tema.getTheme(),
    );
  }
}
