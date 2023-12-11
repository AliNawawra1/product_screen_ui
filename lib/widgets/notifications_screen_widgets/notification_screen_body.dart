import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/category_title_row.dart';
import 'package:product_screen_ui/widgets/notifications_screen_widgets/notification_list_tile.dart';
import 'package:product_screen_ui/widgets/notifications_screen_widgets/notification_list_view_builder.dart';

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTitleRow(title: 'Promotions', subTitle: ''),
          NotificationListViewBuilder(
            itemCount: 2,
            itemBuilder: (context, index) => NotificationListTile(
                titleText: 'Lorem ' * 8, subtitleText: '10:00 Am'),
          ),
          const CustomTitleRow(title: 'Your Activity', subTitle: ''),
          NotificationListViewBuilder(
            height: 500.0,
            itemCount: 3,
            itemBuilder: (context, index) => NotificationListTile(
                height: 100.0,
                leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade200,
                    child: const Icon(Icons.check,
                        color: Colors.deepPurpleAccent)),
                titleText: 'Title',
                subtitleText: 'Lorem ' * 12),
          ),
        ],
      )),
    );
  }
}
