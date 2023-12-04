import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/product_info_screen_widgets/color_circle.dart';

class ColorSelector extends StatelessWidget {
  final List<Color> colors;
  final Color selectedColor;
  final Function(Color) onColorSelected;

  const ColorSelector({
    Key? key,
    required this.colors,
    required this.selectedColor,
    required this.onColorSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: ColorCircle(
            color: color,
            isSelected: color == selectedColor,
            onTap: () => onColorSelected(color),
          ),
        );
      }).toList(),
    );
  }
}
