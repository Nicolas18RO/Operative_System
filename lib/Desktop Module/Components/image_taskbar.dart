import 'package:flutter/material.dart';

class ImageTaskbar extends StatelessWidget {
  final VoidCallback? onTap;
  final String imagePath;
  final String toolTip;
  const ImageTaskbar(
      {super.key,
      required this.imagePath,
      required this.onTap,
      required this.toolTip});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Tooltip(
        message: toolTip,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        textStyle: const TextStyle(color: Colors.white),
        waitDuration: const Duration(milliseconds: 300), // wait before showing
        showDuration: const Duration(seconds: 2), // how long it stays
        child: Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
          ),
          child: Image.asset(
            imagePath,
            height: 40,
          ),
        ),
      ),
    );
  }
}
