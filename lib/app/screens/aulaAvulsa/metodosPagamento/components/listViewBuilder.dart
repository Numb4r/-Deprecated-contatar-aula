import 'package:aula_online/app/shared/blocs/Compra_Avulsa_Bloc.dart';
import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List<Map> metodos = [
  {"title": "Cash in hand", "icon": Icons.wb_iridescent},
  {"title": "Credit Card", "icon": Icons.credit_card}
];

Widget listTilePagamento(context, index) {
  final avulsa = Provider.of<CompraAvulsaBloc>(context);
  return ListTile(
    title: Text(metodos[index]["title"]),
    leading: Icon(metodos[index]["icon"]),
    onTap: () {
      avulsa.creditCardPayment = index == 0 ? false : null;
      Navigator.of(context).pushNamed(index == 0
          ? Routes.ResumoAvulsa.toString()
          : Routes.CadastroCartao.toString());
    },
  );
}

Widget listViewBuilder() {
  return ListView.builder(
    itemCount: metodos.length,
    itemBuilder: listTilePagamento,
  );
}
