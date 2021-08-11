import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  String hint;
  IconData? trailingIcon;
  String? suffix;
  double? width;
  InputWidget({this.trailingIcon, required this.hint, this.suffix, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            trailingIcon,
            color: const Color(0xFFA7A5B0),
          ),
          enabledBorder: _inputBorder(),
          hintText: hint,
          suffixText: suffix,
          border: _inputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
          color: Color(0xFF7C385D), style: BorderStyle.solid, width: 2.0),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(30),
        right: Radius.circular(30),
      ),
    );
  }
}
