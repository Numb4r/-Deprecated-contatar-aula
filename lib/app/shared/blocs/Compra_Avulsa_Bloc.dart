import 'package:flutter/material.dart';

class CompraAvulsaBloc with ChangeNotifier {
  var _materia;
  var _professor;
  var _horario;
  var _nome;
  var _email;
  var _telefone;
  bool _creditCardPayment;
  List<Map> _creditCardInfo;

  get materia => _materia;
  set materia(materia) {
    _materia = materia;
  }

  get professor => _professor;
  set professor(professor) {
    _professor = professor;
  }

  get horario => _horario;
  set horario(horario) {
    _horario = horario;
  }

  get nome => _nome;
  set nome(nome) {
    _nome = nome;
  }

  get email => _email;
  set email(email) {
    _email = email;
  }

  get telefone => _telefone;
  set telefone(telefone) {
    _telefone = telefone;
  }

  bool get creditCardPayment => _creditCardPayment;
  set creditCardPayment(bool creditCardPayment) {
    _creditCardPayment = creditCardPayment;
  }

  List<Map> get creditCardInfo => _creditCardInfo;
  set creditCardInfo(List<Map> creditCardInfo) {
    _creditCardInfo = creditCardInfo;
  }
}
