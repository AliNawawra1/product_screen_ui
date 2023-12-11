import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final double borderRadius;
  final double elevation;
  final Widget? title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final bool withoutTitle;
  final bool withoutSubtitle;
  final bool withoutLeading;
  final bool withoutTrailing;

  const CustomListTile({
    super.key,
    this.borderRadius = 15.0,
    this.elevation = 5.0,
    this.title,
    this.leading,
    this.trailing,
    this.subtitle,
    this.withoutTitle = false,
    this.withoutSubtitle = false,
    this.withoutLeading = false,
    this.withoutTrailing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      color: Colors.white,
      child: ListTile(
        title: withoutTitle ? null : title ?? const Text('Title'),
        subtitle: withoutSubtitle
            ? null
            : subtitle ??
                const Text(
                  'SubTitle',
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 14.0),
                ),
        leading: withoutLeading
            ? null
            : leading ?? Image.network('https://via.placeholder.com/150'),
        trailing: withoutTrailing
            ? null
            : trailing ??
                const Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Icon(Icons.add_shopping_cart_outlined,
                      color: Colors.deepPurpleAccent, size: 18),
                ),
      ),
    );
  }
}
