import 'package:flutter/material.dart';

class MyTextLogin extends StatelessWidget {
  final String texto;
  final double fontSizeText;

  const MyTextLogin(
      {super.key, required this.texto, required this.fontSizeText});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
          color: const Color(0xFF2E2A3C),
          fontSize: fontSizeText,
          fontWeight: FontWeight.bold),
    );
  }
}
