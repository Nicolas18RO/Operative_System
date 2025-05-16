import 'package:flutter/material.dart';
import 'package:opeterative_system/Desktop%20Module/Screens/homeScreen.dart';
import 'package:opeterative_system/Login%20Module/Components/myButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 255, 255),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_box,
                color: Colors.blue,
                size: 70,
              ),

              //Button Iniciar
              const SizedBox(
                height: 20,
              ),
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
    );
  }
}
