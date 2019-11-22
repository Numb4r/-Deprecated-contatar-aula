import 'package:aula_online/app/screens/aulaAvulsa/resumoAvulsa/components/TextResumo.dart';
import 'package:aula_online/app/screens/choiceScreen/choiceScreen.dart';
import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/components/SubmitButton.dart';
import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:aula_online/app/shared/models/Professor.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResumoAvulsa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final avulsa = Provider.of<CompraAvulsaBloc>(context, listen: false);
    final Professor professor = avulsa.professor;
    return Scaffold(
        appBar: title(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Resumo",
                  style: TextStyle(fontSize: 45),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextResumo(type: "Professor", info: professor.nome),
              TextResumo(type: "Materia", info: avulsa.materia),
              TextResumo(type: "Horario", info: avulsa.horario),
              TextResumo(type: "Nome", info: avulsa.nome),
              TextResumo(type: "Email", info: avulsa.email),
              TextResumo(type: "Telefone", info: avulsa.telefone),
              TextResumo(
                  type: "Tipo de pagamento",
                  info: avulsa.creditCardPayment
                      ? "Credit Card"
                      : "Cash in hand"),
              TextResumo(type: "Total", info: "R\$ ${professor.precoAula}"),
              SubmitButton(
                label: "Enviar",
                onPressed: () => Navigator.popUntil(context,
                    ModalRoute.withName(Routes.ChoiceScreen.toString())),
              ),
            ],
          ),
        ));
  }
}

// var _materia;
// var _professor;
// var _horario;
// var _nome;
// var _email;
// var _telefone;
