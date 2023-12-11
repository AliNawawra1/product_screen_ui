import 'package:flutter/material.dart';
import 'package:product_screen_ui/widgets/shared/custom_list_tile.dart';
import 'package:product_screen_ui/widgets/shared/custom_text_widget.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomTextWidget(
              text: '5 Products',
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
              color: Colors.grey),
          const SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                child: CustomListTile(
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add, size: 15.0, color: Colors.black),
                      Text('1'),
                      Icon(Icons.remove, size: 15.0),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
