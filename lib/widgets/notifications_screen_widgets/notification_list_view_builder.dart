import 'package:flutter/material.dart';

class NotificationListViewBuilder extends StatelessWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double height;
  final EdgeInsetsGeometry padding;

  const NotificationListViewBuilder({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    this.height = 200.0,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) => Padding(
          padding: padding,
          child: itemBuilder(context, index),
        ),
      ),
    );
  }
}
