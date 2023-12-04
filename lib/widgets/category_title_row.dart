import 'package:flutter/material.dart';

class CategoryTitleRow extends StatelessWidget {
  final String title;

  const CategoryTitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        TextButton(
          onPressed: () {},
          child: const Text('See More', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}
