import 'package:aula_online/app/shared/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget title() {
  return AppBar(
    title: Text("Me salva ae"),
    centerTitle: true,
    actions: <Widget>[IconButtonChangeTheme()],
  );
}

class IconButtonChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tema = Provider.of<ThemeChanger>(context);
    return IconButton(
      icon: Icon(Icons.dashboard),
      onPressed: () => tema.switchTheme(),
    );
  }
}
