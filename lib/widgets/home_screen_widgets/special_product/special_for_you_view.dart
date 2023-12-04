import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/special_product/special_for_you_card.dart';
import 'package:product_screen_ui/widgets/horizontal_list_view.dart';

class SpecialForYouView extends StatelessWidget {
  final String title;

  const SpecialForYouView({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListView(
        title: title,
        height: 130.0,
        itemBuilder: (context, index) => const SpecialForYouCard());
  }
}
