import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/category_title_row.dart';

class HorizontalListView extends StatelessWidget {
  final String title;
  final double height;
  final IndexedWidgetBuilder itemBuilder;

  const HorizontalListView({
    Key? key,
    required this.title,
    required this.height,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryTitleRow(title: title),
          SizedBox(
            height: height,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: itemBuilder,
            ),
          ),
        ],
      ),
    );
  }
}
