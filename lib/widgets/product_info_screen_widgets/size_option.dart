import 'package:flutter/material.dart';

class SizeOption extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  const SizeOption({
    Key? key,
    required this.size,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade200 : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: isSelected ? Colors.transparent : Colors.grey.shade300,
          ),
        ),
        child: Text(
          size,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

