import 'package:flutter/material.dart';
import 'package:product_screen_ui/screens/search_screen.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchScreen(
        isWishList: true, title: 'Wish List', listViewCount: 5);
  }
}
