import 'package:aula_online/app/shared/models/Routes.dart';
import 'package:flutter/material.dart';

List<Map> metodos = [
  {"title": "Cash in hand", "icon": Icons.wb_iridescent},
  {"title": "Credit Card", "icon": Icons.credit_card}
];

Widget listTilePagamento(context, index) {
  return ListTile(
    title: Text(metodos[index]["title"]),
    leading: Icon(metodos[index]["icon"]),
    onTap: () {
      Navigator.of(context)
          .pushNamed(index == 0 ? '' : Routes.CadastroCartao.toString());
    },
  );
}

Widget listViewBuilder() {
  return ListView.builder(
    itemCount: metodos.length,
    itemBuilder: listTilePagamento,
  );
}
