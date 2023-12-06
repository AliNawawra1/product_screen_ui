import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final double borderRadius;
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final bool withoutSubtitle;

  const CustomListTile(
      {super.key,
      this.borderRadius = 15.0,
      this.title = 'Title',
      this.leading,
      this.trailing,
      this.withoutSubtitle = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(borderRadius),
      color: Colors.white,
      child: ListTile(
        title: Text(title),
        subtitle: withoutSubtitle
            ? null
            : const Text(
                'SubTitle',
                style:
                    TextStyle(color: Colors.deepPurpleAccent, fontSize: 14.0),
              ),
        leading: leading ?? Image.network('https://via.placeholder.com/150'),
        trailing: trailing ??
            const Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Icon(Icons.add_shopping_cart_outlined,
                  color: Colors.deepPurpleAccent, size: 18),
            ),
      ),
    );
  }
}
