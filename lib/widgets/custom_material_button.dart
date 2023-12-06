import 'package:flutter/material.dart';
import 'package:product_screen_ui/e_app_bar_actions.dart';
import 'package:product_screen_ui/widgets/app_bar_actions.dart';
import 'package:product_screen_ui/widgets/product_search_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        title: const ProductSearchBar(),
        backgroundColor: Colors.white,
        actions: EAppBarActions.values
            .map((action) => CustomMaterialButton(icon: action.icon))
            .toList());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
