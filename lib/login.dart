import 'package:flutter/material.dart';
import 'package:power_tailor/widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color p1 = const Color.fromRGBO(28, 49, 50, 1);
  Color p2 = const Color.fromRGBO(211, 188, 136, 1);
  Color tColor = const Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ورود",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: p2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(tColor),
                        foregroundColor: MaterialStatePropertyAll(p2),
                        side: MaterialStatePropertyAll(BorderSide(
                            color: p2, style: BorderStyle.solid, width: 3))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 8),
                        Text("رفتن به گوگل"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                customTextField(hintText: "ایمیل"),
                const SizedBox(
                  height: 15,
                ),
                customTextField(hintText: "رمز عبور"),
                const SizedBox(
                  height: 15,
                ),
                customTextField(hintText: "لایسنس"),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "رمز خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "لایسنس خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 20,
                ),
                customButton(textButton: "ورود به حساب", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
