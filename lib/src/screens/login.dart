import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:power_tailor/src/common_widgets/custom_textfield.dart';
import 'package:power_tailor/src/common_widgets/custom_button.dart';
import 'package:power_tailor/src/constants/colors.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: p1,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Padding(
                  padding:EdgeInsets.only(right:20),
                  child:  Align(
                    alignment: Alignment.centerRight,
                    child:Text(  
                    "ورود",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: p2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                     
                    ),
                  ), 
                  ),
                ),
                
                Container(
                  height: 60,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 30, 
                      vertical: 30
                    ), 
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                    
                      side: const BorderSide(
                        color: p2,
                        width: 3, 
                      ),
                      backgroundColor: tColor, 
                      foregroundColor: p2, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.g_mobiledata),
                        
                        Text("رفتن به گوگل"),
                      ],
                    ),
                  ),
                ),
              
                customTextField(hintText: "ایمیل"),
                customTextField(hintText: "رمز عبور", 
                  obscureText: true, 
                ),
                customTextField(
                  hintText: "لایسنس", 
                  
                  ),
              
                MaterialButton(
                    onPressed: () {},
                    child: const Text(
                      "رمز خود را فراموش کرده اید؟",
                      style: TextStyle(
                          color: p2, fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                MaterialButton(
                    onPressed: () {},
                    child: const Text(
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
