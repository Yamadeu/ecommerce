import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BigText({String text = "Shopee",Color color = Colors.red}){
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 25,
      fontFamily: "PlaywriteNGModern-Medium",
      fontWeight: FontWeight.bold,
      letterSpacing: 1.1
    )
  );
}


Widget MediumText({String text = "Shopee",Color color = Colors.red}){
  return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: 20,
          fontFamily: "PlaywriteNGModern-Medium",
          letterSpacing: 1.1,
          fontWeight: FontWeight.bold,
      )
  );
}


Widget SmallText({String text = "Shopee",Color color = Colors.red}){
  return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: 17,
          fontFamily: "PlaywriteNGModern-Regular",
          letterSpacing: 1.1,
      )
  );
}
