import 'package:flutter/material.dart';
import 'package:power_tailor/widget.dart';

import 'login_or_signup.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    Color p1 = const Color.fromRGBO(28, 49, 50, 1);
    Color p2 = const Color.fromRGBO(211, 188, 136, 1);
    Color tColor = const Color.fromRGBO(255, 255, 255, 1);
    return Scaffold(
      backgroundColor: p1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///image for logo
            SizedBox(
                width: 200,
                height: 300,
                child: Image.asset(
                  "assets/TechLogo.png",
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 100,
            ),

            ///start button
            customButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginOrSignUp(),
                  ));
            },textButton: "شروع کنید"),


            const SizedBox(
              height: 100,
            ),
            Text("power-tailor",
                style: TextStyle(
                    color: tColor, fontFamily: "CustomFont", fontSize: 20)),
            Text("powered by power-tech",
                style: TextStyle(color: tColor, fontFamily: "CustomFont")),
          ],
        ),
      ),
    );
  }
}




