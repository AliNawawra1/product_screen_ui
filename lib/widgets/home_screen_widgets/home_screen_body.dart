import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/featured_best_selling_products/featured_best_categories_view.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/special_product/special_for_you_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpecialForYouView(title: 'Special for you'),
          FeaturedBestCategoriesView(title: 'Featured Products'),
          FeaturedBestCategoriesView(title: 'Best Selling Products'),
        ],
      ),
    );
  }
}
