import 'package:flutter/material.dart';
import './colors.dart';

ThemeData defaultTheme=ThemeData(
colorScheme: ColorScheme.fromSwatch(
  primarySwatch: primary,
  accentColor: accent,
),
    textTheme:const TextTheme(
    bodyLarge:TextStyle(
    color: accent,
    fontWeight: FontWeight.w700
),
),
);