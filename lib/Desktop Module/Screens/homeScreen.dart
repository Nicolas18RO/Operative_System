import 'package:flutter/material.dart';
import 'package:opeterative_system/Desktop%20Module/Components/image_taskbar.dart';
import 'package:opeterative_system/Desktop%20Module/Components/style.dart';
import 'package:opeterative_system/Desktop%20Module/functions/functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              'lib/Components/Images/image.png',
              fit: BoxFit.cover,
            ),
          ),
          MyBackground(
            useImage:false,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ContainerBlur(
                  widthContainerBlur: 60,
                  heigthContainerBlur: 300,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      ImageTaskbar(
                        imagePath: 'lib/Components/Images/Google_Logo.webp',
                        onTap: () => LauncherUtil.abrirGoogle(),
                      ),
                      ImageTaskbar(
                        imagePath: 'lib/Components/Images/music.webp',
                        onTap: () => LauncherUtil.abrirSpotify(),
                      ),
                      ImageTaskbar(
                        imagePath: 'lib/Components/Images/document.webp',
                        onTap: () => LauncherUtil.abrirArchivo("C:/"),
                      ),
                      ImageTaskbar(
                          imagePath: 'lib/Components/Images/happy.webp',
                          onTap: () => LauncherUtil.chistes(),
                        ),
                      ImageTaskbar(
                        imagePath: 'lib/Components/Images/book.webp',
                        onTap: () => LauncherUtil.consejos(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}