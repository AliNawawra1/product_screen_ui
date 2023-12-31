import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

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
        CustomTextWidget(
            text: title, fontSize: 18.0, fontWeight: FontWeight.w500),
        TextButton(
          onPressed: () {},
          child: Text(subTitle, style: const TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}
