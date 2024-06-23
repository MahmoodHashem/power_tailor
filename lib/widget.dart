import 'package:flutter/material.dart';
Color p1 = const Color.fromRGBO(28, 49, 50, 1);
Color p2 = const Color.fromRGBO(211, 188, 136, 1);
Color tColor = const Color.fromRGBO(255, 255, 255, 1);

Widget customButton({required String textButton, required VoidCallback onPressed,double? fSize,double? width,double? height}){
  return  ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(p2),
        fixedSize:  MaterialStatePropertyAll(Size(width??200,height?? 80)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23)))),
    onPressed:onPressed,
    child: Text(textButton,
        style: TextStyle(
            color: tColor, fontSize: fSize??25, fontFamily: "CustomFont")),
  );

}
///Custom Button
Widget customTextField({required String hintText , }){
  return  SizedBox(
    width: 300,
    child: TextField(
      textAlign: TextAlign.right,
      cursorColor: Colors.brown[300],
      style: TextStyle(color: p2),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: p2,fontWeight: FontWeight.bold),
          hintTextDirection: TextDirection.rtl,
          filled: true,
          fillColor: tColor,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: p2,width: 3)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:p2))

      ),
    ),
  );
}