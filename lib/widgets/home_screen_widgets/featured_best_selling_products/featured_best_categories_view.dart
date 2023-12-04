import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/featured_best_selling_products/featured_best_products_card.dart';
import 'package:product_screen_ui/widgets/horizontal_list_view.dart';

class FeaturedBestCategoriesView extends StatelessWidget {
  final String title;

  const FeaturedBestCategoriesView({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalListView(
        title: title,
        height: 200.0,
        itemBuilder: (context, index) => const FeaturedBestProductCard());
  }
}
