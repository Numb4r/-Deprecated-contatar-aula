import 'package:flutter/material.dart';

Widget flatButtonChoiceScreen(context, {String text, String route}) {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      onTap: () => Navigator.of(context).pushNamed(route),
    ),
  );
}
