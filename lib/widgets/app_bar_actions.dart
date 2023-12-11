import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final IconData icon;
  final double elevation;

  final VoidCallback? onTap;

  const CustomMaterialButton({
    Key? key,
    required this.icon,
    this.elevation = 5.0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Material(
          color: Colors.transparent,
          elevation: elevation,
          shape: const CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(icon, color: Colors.deepPurpleAccent),
          ),
        ),
      ),
    );
  }
}
