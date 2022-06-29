import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color txtColor;
  final Widget icon;
  final double radius;
  final double height;
  final Color borderColor;
  final Function onpressed;
  const CustomButton(
      {Key? key,
      required this.color,
      required this.label,
      this.txtColor = Colors.white,
      this.radius = 0.0,
      this.icon = const SizedBox(),
      this.height = 40,
      this.borderColor = Colors.transparent,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.antiAlias,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: color,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(radius)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            label,
            style: TextStyle(color: txtColor),
          ),
        ],
      ),
      onPressed: () {
        onpressed();
      },
    );
  }
}
