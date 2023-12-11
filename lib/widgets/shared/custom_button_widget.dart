import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final double? buttonWidth;
  final double? buttonHeight;
  final VoidCallback? onPressed; // Optional onPressed callback

  const CustomButtonWidget({
    Key? key,
    required this.buttonText,
    this.buttonWidth = double.infinity,
    this.buttonHeight = 45.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
        ),
        onPressed: onPressed,
        child: Text(buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 17)),
      ),
    );
  }
}
