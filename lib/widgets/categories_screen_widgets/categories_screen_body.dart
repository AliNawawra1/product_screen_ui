import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/product_info_screen.dart';
import 'package:product_screen_ui/widgets/home_screen_widgets/special_product/special_for_you_card.dart';
import 'package:product_screen_ui/widgets/shared/product_search_bar.dart';

class CategoriesScreenBody extends StatelessWidget {
  const CategoriesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProductSearchBar(width: 330.0),
          const SizedBox(height: 10.0),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 6 / 4,
                mainAxisSpacing: 3.0,
                children: List.generate(
                  4,
                  (index) => InkWell(
                    onTap: () => navigateToInfo(context),
                    child: SpecialForYouCard(index: index),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  void navigateToInfo(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProductInfoScreen()));
  }
}
