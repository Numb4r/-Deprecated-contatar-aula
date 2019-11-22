import 'package:aula_online/app/shared/blocs/theme.dart';
import 'package:aula_online/app/shared/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfigScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuracoes"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Dark Theme"),
                Switch(
                  value: theme.isDark,
                  onChanged: (_) => theme.switchTheme(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
