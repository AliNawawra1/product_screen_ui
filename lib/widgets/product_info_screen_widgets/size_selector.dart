import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/product_info_screen_widgets/size_option.dart';

class SizeSelector extends StatelessWidget {
  final List<String> sizes;
  final String selectedSize;
  final Function(String) onSizeSelected;

  const SizeSelector({
    Key? key,
    required this.sizes,
    required this.selectedSize,
    required this.onSizeSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      children: sizes.map((size) {
        return SizeOption(
          size: size,
          isSelected: size == selectedSize,
          onTap: () => onSizeSelected(size),
        );
      }).toList(),
    );
  }
}
