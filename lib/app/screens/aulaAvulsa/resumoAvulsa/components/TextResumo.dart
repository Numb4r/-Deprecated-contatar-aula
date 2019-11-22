import 'package:flutter/widgets.dart';

class TextResumo extends StatelessWidget {
  String type;
  String info;
  TextResumo({this.type, this.info});
  Widget text(text) {
    return Text(
      text,
      style: TextStyle(fontSize: 25),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[text(type), text(info)],
    );
  }
}
