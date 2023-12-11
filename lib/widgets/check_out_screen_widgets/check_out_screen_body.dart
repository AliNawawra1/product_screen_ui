import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/category_title_row.dart';
import 'package:product_screen_ui/widgets/custom_image_list_view.dart';
import 'package:product_screen_ui/widgets/shared/custom_list_tile.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class CheckOutScreenBody extends StatelessWidget {
  const CheckOutScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitleRow(title: 'Your Address', subTitle: 'Change Address'),
            SizedBox(height: 6.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: SizedBox(
                height: 70.0,
                child: CustomListTile(
                  withoutLeading: true,
                  withoutTrailing: true,
                  title: CustomTextWidget(
                    text: 'John Doe, +961-12345678',
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  subtitle: CustomTextWidget(
                      text:
                          'Schools Street, Behind the Official school,\nMaghdouche, Saida, Lebanon, 1600',
                      fontSize: 14.0,
                      color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            CustomTitleRow(title: 'Shipping Mode', subTitle: 'Change Mode'),
            SizedBox(height: 6.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.0),
              child: CustomListTile(
                withoutTitle: true,
                withoutSubtitle: true,
                leading: CustomTextWidget(
                  text: 'Flat Rate',
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
                trailing: CustomTextWidget(
                  text: '\$20.0',
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            CustomTitleRow(title: 'Your Cart', subTitle: 'View All'),
            CustomImageListView(height: 110),
            CustomTitleRow(title: 'Payment Method', subTitle: ''),
            CustomImageListView(height: 60.0, itemWidth: 80.0),
            CustomTitleRow(title: 'Order Summary', subTitle: ''),
          ],
        ),
      ),
    );
  }
}
