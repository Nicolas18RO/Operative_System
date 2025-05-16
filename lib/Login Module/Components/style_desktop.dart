import 'dart:ui';
import 'package:flutter/material.dart';

class ContainerBlur extends StatelessWidget {
  final double widthContainerBlur;
  final double heigthContainerBlur;
  final Widget child;
  const ContainerBlur({
    super.key,
    required this.child,
    required this.widthContainerBlur,
    required this.heigthContainerBlur,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: widthContainerBlur, //300
          height: heigthContainerBlur, //480
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(40)),
          child: child,
        ),
      ),
    );
  }
}

class MyBackground extends StatelessWidget {
  final Widget child;
  final bool useImage;
  const MyBackground({
    super.key,
    required this.child,
    required this.useImage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: useImage
            ? const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(''), fit: BoxFit.cover))
            : const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff740f80),
                    Color(0xFFBD11DF),
                    Color(0xFFEB6AFF)
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
        child: child,
      ),
    );
  }
}

class ContainerBackground extends StatelessWidget {
  const ContainerBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        width: 250,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: <Color>[
              Color(0xFFF90909),
              Color(0xFFFF5B5B),
              Color(0xFFFFDEDE)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            borderRadius: BorderRadius.circular(50),
          ),
        ));
  }
}
