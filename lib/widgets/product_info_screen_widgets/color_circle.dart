import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback? onTap;

  const ColorCircle({
    Key? key,
    required this.color,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: isSelected
            ? const Icon(Icons.check, size: 16, color: Colors.white)
            : const SizedBox(),
      ),
    );
  }
}
