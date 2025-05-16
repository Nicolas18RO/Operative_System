import 'package:flutter/material.dart';
import 'package:opeterative_system/Desktop%20Module/Components/image_taskbar.dart';
import 'package:opeterative_system/Login%20Module/Components/style_desktop.dart';
import 'package:opeterative_system/Desktop%20Module/functions/functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackground(
        useImage: false,
        child: Stack(
          children: [
            //Centered Text
            Center(
              child: Text(
                'Bienvenido! Es un placer tenerte de vuelta',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //Right-side Taskbar
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ContainerBlur(
                  widthContainerBlur: 60,
                  heigthContainerBlur: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //Google Icon
                        SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Google_Logo.webp',
                          onTap: LauncherUtil.abrirGoogle,
                        ),

                        //Spotify Icon
                        SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Spotify_Icon.webp',
                          onTap: LauncherUtil.abrirSpotify,
                        ),

                        //Files Icon
                        SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/File_Icon.webp',
                          onTap: () => LauncherUtil.abrirArchivo(
                              'C:/'), 
                        ),

                        //Settings Icon
                        SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Settings_Icon.webp',
                          onTap: null,
                        ),

                        //Emotion Icon
                        SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Emotion_Icon.webp',
                          onTap: LauncherUtil.chistes,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
