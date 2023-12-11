import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/notifications_screen_widgets/notification_screen_body.dart';
import 'package:product_screen_ui/widgets/shared/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(titleText: 'Notifications'),
      body: NotificationsScreenBody(),
    );
  }
}
