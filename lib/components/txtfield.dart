import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  Widget? prefix;
  Widget? suffix;

  final String label;
  final String hint;
  final bool isPassword;
  final validationMessage;
  TextEditingController controller;

  CustomTextField(
      {required this.controller,
      required this.hint,
      required this.label,
      this.prefix,
      this.suffix,
      required this.validationMessage,
      this.isPassword = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword,
          validator: (value) {
            if (widget.label == "Phone Number" && value!.length > 1) {
              widget.suffix = Icon(
                Icons.warning,
                color: Colors.red,
              );
              setState(() {});
              return widget.validationMessage;
            } else
              return null;
          },
          decoration: InputDecoration(
            prefixIcon: widget.prefix,
            suffixIcon: widget.suffix,
            hintText: widget.hint,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ],
    );
  }
}
