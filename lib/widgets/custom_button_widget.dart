import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed; // Optional onPressed callback

  const CustomButtonWidget({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.0,
      child: ElevatedButton(
        style:
        ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),),
        onPressed: onPressed,
        child: Text(buttonText,style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
