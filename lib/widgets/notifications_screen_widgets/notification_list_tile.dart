import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_list_tile.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class NotificationListTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final double titleFontSize;
  final double subtitleFontSize;
  final double height;
  final Color subtitleColor;
  final bool withoutTrailing;
  final Widget? leading;

  const NotificationListTile({
    Key? key,
    required this.titleText,
    required this.subtitleText,
    this.titleFontSize = 15.0,
    this.subtitleFontSize = 14.0,
    this.height = 80.0,
    this.subtitleColor = Colors.grey,
    this.withoutTrailing = true,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: CustomListTile(
        borderRadius: 8.0,  
        elevation: 3.0,
        leading: leading,
        withoutTrailing: withoutTrailing,
        title: CustomTextWidget(text: titleText, fontSize: titleFontSize),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: CustomTextWidget(
            text: subtitleText,
            color: subtitleColor,
            fontSize: subtitleFontSize,
          ),
        ),
      ),
    );
  }
}
