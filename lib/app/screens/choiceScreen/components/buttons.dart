import 'package:flutter/material.dart';

// Widget choiceScreenButton(context, {String text, String route}) {
//   return Padding(
//     padding: const EdgeInsets.all(25.0),
//     child: GestureDetector(
//       child: Container(
//         alignment: Alignment.center,
//         width: MediaQuery.of(context).size.width * 0.75,
//         height: MediaQuery.of(context).size.height * 0.15,
//         decoration: BoxDecoration(
//           color: Colors.grey[100],
//           borderRadius: BorderRadius.all(
//             Radius.circular(15),
//           ),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 25),
//         ),
//       ),
//       onTap: () => Navigator.of(context).pushNamed(route),
//     ),
//   );
// }

Widget choiceScreenButton(context, {String text, String route}) {
  return Padding(
    padding: const EdgeInsets.all(35.0),
    child: OutlineButton(
      padding: const EdgeInsets.all(35.0),
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
