import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_tailor/widget.dart';

import 'login.dart';

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Color p1 = const Color.fromRGBO(28, 49, 50, 1);
    Color p2 = const Color.fromRGBO(211, 188, 136, 1);
    Color tColor = const Color.fromRGBO(255, 255, 255, 1);
    return Scaffold(
      backgroundColor: p1,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context);
                    },
                    child: SvgPicture.asset(
                      "assets/Vector.svg",
                      height: 30,
                      color: p2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              SvgPicture.asset(
                "assets/tailor1.svg",
                width: 200,
                height: 200,
                color: p2,
              ),
              const SizedBox(
                height: 80,
              ),
              customButton(
                textButton: "ورورد به حساب",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                },
              ),
              const SizedBox(
                height: 50,
              ),
              customButton(
                  textButton: "ساخت حساب جدید", onPressed: () {}, width: 250),
              const SizedBox(
                height: 100,
              ),
              Image.asset("assets/TechLogo.png", height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
