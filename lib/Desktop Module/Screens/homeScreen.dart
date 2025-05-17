import 'package:flutter/material.dart';
import 'package:opeterative_system/Desktop%20Module/Components/image_taskbar.dart';
import 'package:opeterative_system/Desktop%20Module/Screens/web_app_screen.dart';
import 'package:opeterative_system/Desktop%20Module/Components/style_desktop.dart';

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
            const Center(
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
                padding: const EdgeInsets.all(10),
                child: ContainerBlur(
                  widthContainerBlur: 60,
                  heigthContainerBlur: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //Google Icon
                        const SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Google_Logo.webp',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const WebAppWindow(
                                  url: 'https://www.google.com',
                                  appbarName: 'Google',
                                ),
                              ),
                            );
                          },
                          toolTip: 'Google',
                        ),

                        //Spotify Icon
                        const SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Spotify_Icon.webp',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const WebAppWindow(
                                  url:
                                      'https://open.spotify.com/playlist/37i9dQZF1DXdPec7aLTmlC',
                                  appbarName: 'Spotify',
                                ),
                              ),
                            );
                          },
                          toolTip: 'Spotify',
                        ),

                        //Files Icon
                        const SizedBox(height: 10),
                        const ImageTaskbar(
                          imagePath: 'lib/Components/Images/File_Icon.webp',
                          onTap: null,
                          toolTip: 'Files',
                        ),

                        //Settings Icon
                        const SizedBox(height: 10),
                        const ImageTaskbar(
                          imagePath: 'lib/Components/Images/Settings_Icon.webp',
                          onTap: null,
                          toolTip: 'Settings',
                        ),

                        //Emotion Icon
                        const SizedBox(height: 10),
                        const ImageTaskbar(
                          imagePath: 'lib/Components/Images/Emotion_Icon.webp',
                          onTap: null,
                          toolTip: 'Emotion',
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
