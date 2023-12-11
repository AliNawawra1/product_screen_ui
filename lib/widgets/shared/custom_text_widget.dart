import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final FontStyle fontStyle;
  final TextAlign? textAlign;
  final double letterSpacing;
  final double wordSpacing;
  final TextDecoration decoration;

  const CustomTextWidget({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.color = Colors.black,
    this.fontStyle = FontStyle.normal,
    this.letterSpacing = 0.0,
    this.wordSpacing = 0.0,
    this.decoration = TextDecoration.none,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        decoration: decoration,
      ),
    );
  }
}
