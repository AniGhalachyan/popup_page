import 'package:flutter/material.dart';

Widget textButtom(String title) {
  return TextButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        width: 60,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromRGBO(244, 182, 63, 1)),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontSize: 14,
          ),
        ),
      ));
}
