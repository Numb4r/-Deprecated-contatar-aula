import 'package:flutter/material.dart';

Widget buttonSubmit(context, key) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: OutlineButton(
      onPressed: () {
        print(key.currentState);
        // if (key.currentState.validate()) {
        Navigator.of(context).pushNamed('/dashboard');
        // }
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.orange),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Enviar',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
