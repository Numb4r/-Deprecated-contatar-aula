import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: GridView.count(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridTile(
              child: OutlineButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.facebook,
                        size: 55,
                      ),
                      Text(
                        "Vincular  Facebook",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
        crossAxisCount: 3,
      ),
    );
  }
}
