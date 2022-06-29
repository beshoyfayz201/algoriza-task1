import 'package:flutter/material.dart';

class HelpWedget extends StatelessWidget {
  final String txt;
  HelpWedget({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        Text(
          "Help",
          style: TextStyle(color: Colors.blue),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.help,
          color: Colors.blue,
        )
      ],
    );
  }
}
