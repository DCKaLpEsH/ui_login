import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String title;

  ButtonWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30.0),
          right: Radius.circular(30.0),
        ),
        color: Color(0xFFEE3A57),
      ),
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide.none),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
        onPressed: () {},
      ),
    );
  }
}
