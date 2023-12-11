import 'package:flutter/material.dart';

import 'package:product_screen_ui/widgets/categories_screen_widgets/categories_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          titleText: 'Categories', automaticallyImplyLeading: false),
      body: CategoriesScreenBody(),
    );
  }
}
