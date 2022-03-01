import 'package:facebook_interface/screens/prime_screen.dart';
import 'package:facebook_interface/utils/color_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Facebook",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: ColorPallete.scaffold),
    home: PrimeScreen(),
  ));
}
