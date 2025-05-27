import 'dart:io';

import 'package:flutter/material.dart';
import 'package:opeterative_system/Components/Widgets/my_text.dart';
import 'package:opeterative_system/Desktop%20Module/Components/image_taskbar.dart';
import 'package:opeterative_system/Desktop%20Module/Components/time_current.dart';
import 'package:opeterative_system/Desktop%20Module/Screens/web_app_screen.dart';
import 'package:opeterative_system/Desktop%20Module/Components/style_desktop.dart';
import 'package:opeterative_system/Login%20Module/Screens/Login_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showBlurContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackground(
        useImage: false,
        child: Stack(
          children: [
            //Centered Text
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextDesktop(
                    texto: 'Bienvenido a EMOSOFT!',
                    fontSizeText: 30,
                    color: Color(0xFFFEF5FE),
                  ),
                  SizedBox(height: 10),
                  TimeWidget(fontSize: 40)
                ],
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
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/File_Icon.webp',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const WebAppWindow(
                                  url:
                                      'https://mailunicundiedu-my.sharepoint.com/my?id=%2Fpersonal%2Fnrodriguezo%5Fucundinamarca%5Fedu%5Fco%2FDocuments%2FUNIVERSIDAD%2FQUINTO%20SEMESTRE%2FSistemas%20Operativos%2FOperative%20System',
                                  appbarName: 'Files',
                                ),
                              ),
                            );
                          },
                          toolTip: 'Files',
                        ),

                        //Settings Icon
                        const SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Settings_Icon.webp',
                          onTap: () {
                            setState(() {
                              showBlurContainer = !showBlurContainer;
                            });
                          },
                          toolTip: 'Settings',
                        ),

                        //Emotion Icon
                        const SizedBox(height: 10),
                        ImageTaskbar(
                          imagePath: 'lib/Components/Images/Emotion_Icon.webp',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const WebAppWindow(
                                  url: 'https://es.memedroid.com/memes/top/day',
                                  appbarName: 'Emotion',
                                ),
                              ),
                            );
                          },
                          toolTip: 'Emotion',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (showBlurContainer)
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(100),
                  child: ContainerBlur(
                      widthContainerBlur: 100,
                      heigthContainerBlur: 150,
                      child: Column(
                        children: [
                          //Suspend Icon
                          const SizedBox(height: 10),
                          ImageTaskbar(
                              imagePath:
                                  'lib/Components/Images/Suspended_Icon.webp',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                              toolTip: 'Suspender'),

                          //Shut Down Icon
                          const SizedBox(height: 10),
                          ImageTaskbar(
                              imagePath:
                                  'lib/Components/Images/TurnOff_Icon.webp',
                              onTap: () {
                                exit(0);
                              },
                              toolTip: 'Apagar'),
                        ],
                      )),
                ),
              )
          ],
        ),
      ),
    );
  }
}
