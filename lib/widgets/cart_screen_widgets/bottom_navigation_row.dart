import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class BottomNavigationRow extends StatelessWidget {
  final String label;
  final String value;
  final Color labelColor;
  final FontWeight valueWeight;
  final double fontSize;
  final Color valueColor;

  const BottomNavigationRow({
    Key? key,
    required this.label,
    required this.value,
    this.labelColor = Colors.grey,
    this.valueWeight = FontWeight.w400,
    this.fontSize = 14.0,
    this.valueColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidget(
          text: label,
          color: labelColor,
          fontSize: fontSize,
        ),
        CustomTextWidget(
          text: value,
          fontWeight: valueWeight,
          color: valueColor,
        ),
      ],
    );
  }
}
