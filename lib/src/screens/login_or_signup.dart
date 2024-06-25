import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/constants/colors.dart';


import 'login.dart';

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: p1,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading:   MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      "assets/images/Vector.svg",
                      height: 30,
                      color: p2,

                    ),
                  ), 
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Expanded(
              //   child: const SizedBox(
              //     height: 80,
              //   ),
              // ),
              SvgPicture.asset(
                "assets/images/tailor1.svg",
                width: 200,
                height: 200,
                color: p2,
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
           
              customButton(
                  textButton: "ساخت حساب جدید", onPressed: () {}, width: 250),
            
              Image.asset("assets/images/TechLogo.png", height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
