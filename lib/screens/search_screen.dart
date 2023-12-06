import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/app_bar_actions.dart';
import 'package:product_screen_ui/widgets/custom_list_tile.dart';
import 'package:product_screen_ui/widgets/product_search_bar.dart';

class SearchScreen extends StatelessWidget {
  final bool isWishList;
  final int listViewCount;
  final String title;

  const SearchScreen(
      {super.key,
      this.isWishList = false,
      this.title = 'Search',
      this.listViewCount = 3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            isWishList
                ? const ProductSearchBar(width: double.infinity)
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductSearchBar(width: 260.0),
                      CustomMaterialButton(icon: Icons.filter, elevation: 3.0),
                    ],
                  ),
            const SizedBox(height: 15.0),
            Expanded(
              child: ListView.builder(
                  itemCount: listViewCount,
                  itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: CustomListTile(),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
