import 'package:flutter/material.dart';
class OrWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 3,
          color: Colors.grey.shade300,
        )),
        Text(
          "\t Or \t",
          style: TextStyle(color: Colors.grey.shade300),
        ),
        Expanded(
            child: Container(
          height: 3,
          color: Colors.grey.shade300,
        ))
      ],
    );
  }
}
