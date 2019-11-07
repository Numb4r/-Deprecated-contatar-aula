import 'package:aula_online/app/screens/aulaAvulsa/metodosPagamento/components/listViewBuilder.dart';

import 'package:aula_online/app/shared/components/appBarRegistro.dart';
import 'package:flutter/material.dart';

class MetodosPagamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: listViewBuilder(),
    );
  }
}
