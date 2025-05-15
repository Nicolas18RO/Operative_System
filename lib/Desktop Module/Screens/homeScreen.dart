import 'package:flutter/material.dart';
import 'package:opeterative_system/Desktop%20Module/Components/image_taskbar.dart';
import 'package:opeterative_system/Desktop%20Module/Components/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: MyBackground(
            useImage: false,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ContainerBlur(
                    widthContainerBlur: 60,
                    heigthContainerBlur: 300,
                    child: Column(
                      children: [
                        //Acceso directo Google
                        SizedBox(height: 10),
                        ImageTaskbar(
                            imagePath: 'lib/Components/Images/Google_Logo.webp',
                            onTap: null)
                      ],
                    )),
              ),
            )));
  }
}
