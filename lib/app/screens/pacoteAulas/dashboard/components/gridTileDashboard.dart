import 'package:flutter/material.dart';

Widget gridTileDashBoard(BuildContext context,
    {IconData icon, String text, String routeName = '/splashScreen'}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: GridTile(
      child: OutlineButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, routeName);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                icon,
                size: 55,
              ),
              Text(
                text,
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
  );
}
