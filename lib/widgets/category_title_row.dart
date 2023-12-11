import 'package:flutter/material.dart';

class CustomTitleRow extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool withoutSubTitle;

  const CustomTitleRow({
    super.key,
    required this.title,
    this.subTitle = 'See More',
    this.withoutSubTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style:
                const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        TextButton(
          onPressed: () {},
          child: Text(subTitle, style: const TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}
