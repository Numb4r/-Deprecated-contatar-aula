import 'package:flutter/material.dart';

Widget containerDashboard(context, Widget child) {
  return Container(
    child: child,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.orange[300],
          Colors.orange[700],
        ],
      ),
    ),
  );
}
