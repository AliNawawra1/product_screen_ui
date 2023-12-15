import 'package:flutter/material.dart';
import 'package:product_screen_ui/enums/e_app_bar_actions.dart';
import 'package:product_screen_ui/screens/cart_screen.dart';
import 'package:product_screen_ui/screens/notification_screen.dart';
import 'package:product_screen_ui/widgets/app_bar_actions.dart';
import 'package:product_screen_ui/widgets/shared/product_search_bar.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        title: const ProductSearchBar(),
        backgroundColor: Colors.white,
        actions: EAppBarActions.values
            .map((action) => CustomMaterialButton(
                  icon: action.icon,
                  onTap: () => _navigateToScreen(context, action),
                ))
            .toList());
  }

  void _navigateToScreen(BuildContext context, EAppBarActions action) {
    switch (action) {
      case EAppBarActions.shopping:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CartScreen()));
        break;
      case EAppBarActions.notification:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const NotificationsScreen()));
        break;
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
