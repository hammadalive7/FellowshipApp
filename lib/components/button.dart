import 'package:flutter/material.dart';

Widget button(String buttonText, Function onPressed) {
  return SizedBox(
    width: double.infinity,
    height: 51,
    child: ElevatedButton(
      onPressed: onPressed as void Function()?,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(buttonText, style: const TextStyle(fontSize: 22)),
    ),
  );
}
