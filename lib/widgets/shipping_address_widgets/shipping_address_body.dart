import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/notifications_screen_widgets/notification_list_tile.dart';
import 'package:product_screen_ui/widgets/notifications_screen_widgets/notification_list_view_builder.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class ShippingAddressBody extends StatelessWidget {
  const ShippingAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            CustomTextWidget(
                text: 'Your Shipping Address',
                fontSize: 13.0,
                color: Colors.grey.shade600),
            const SizedBox(height: 10.0),
            NotificationListViewBuilder(
              height: 500.0,
              itemCount: 3,
              itemBuilder: (context, index) => NotificationListTile(
                  height: 120.0,
                  withTitlePadding: true,
                  leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.location_on_outlined,
                          color: Colors.deepPurpleAccent)),
                  titleText: 'John Doe',
                  titleFontWeight: FontWeight.bold,
                  subtitleText: 'Lorem ' * 8),
            ),
          ],
        ),
      ),
    );
  }
}
