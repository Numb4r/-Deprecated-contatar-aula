import 'dart:async';
import 'package:flutter/material.dart';
import 'package:aula_online/app/shared/components/containerDashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacementNamed('/choiceScreen');
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: containerDashboard(
        context,
        Text(
          "Lorem ipsum dolor ",
          style: TextStyle(
            fontSize: 45,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
