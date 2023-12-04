import 'package:flutter/material.dart';

class AppBarActionsWidget extends StatelessWidget {
  final IconData icon;
  final double elevation;

  const AppBarActionsWidget({
    Key? key,
    required this.icon,
    this.elevation = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
