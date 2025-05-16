import 'package:flutter/material.dart';
import 'package:opeterative_system/Desktop%20Module/Components/my_text.dart';
import 'package:opeterative_system/Desktop%20Module/Components/style_Login.dart';
import 'package:opeterative_system/Desktop%20Module/Screens/homeScreen.dart';
import 'package:opeterative_system/Login%20Module/Components/myButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBackgroundLogin(
        useImage: false,
        child: Stack(children: [
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Account circle icon
                  const Icon(
                    Icons.account_circle,
                    color: Color(0xFFF3F4FA),
                    size: 150,
                  ),

                  //User Text
                  const SizedBox(height: 10),
                  const MyTextLogin(texto: 'User 1', fontSizeText: 20),

                  //Button Iniciar
                  const SizedBox(height: 40),
                  MyButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      text: 'Iniciar')
                ]),
          ),
        ]),
      ),
    );
  }
}
