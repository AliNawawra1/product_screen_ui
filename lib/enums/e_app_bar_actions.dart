import 'package:flutter/material.dart';

enum EAppBarActions {
  shopping(Icons.shopping_cart_outlined),
  notification(Icons.notifications_none);

  const EAppBarActions(this.icon);

  final IconData icon;
}
