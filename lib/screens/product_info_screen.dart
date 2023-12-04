import 'package:flutter/material.dart';

import 'package:product_screen_ui/widgets/custom_button_widget.dart';
import 'package:product_screen_ui/widgets/product_info_screen_widgets/color_selector.dart';
import 'package:product_screen_ui/widgets/product_info_screen_widgets/size_selector.dart';

class ProductInfoScreen extends StatelessWidget {
  const ProductInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductInfoBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: CustomButtonWidget(buttonText: 'Add to Cart'),
      ),
    );
  }
}

class ProductInfoBody extends StatefulWidget {
  const ProductInfoBody({super.key});

  @override
  State<ProductInfoBody> createState() => _ProductInfoBodyState();
}

class _ProductInfoBodyState extends State<ProductInfoBody> {
  Color _selectedColor = Colors.red;
  String _selectedSize = "13\"";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://images3.alphacoders.com/133/thumb-1920-1338701.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 40.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('\$2452.75',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0)),
                        Icon(Icons.favorite, color: Colors.red.shade700)
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Macbook Air',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25.0),
                    const Text(
                      'Description',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.0),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      """Lorem Ipsum is simply dummy text of the printing
and typesetting industry. Lorem Ipsum has been the 
industry's standard dummy text ever since.""",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 13.0, color: Colors.grey),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Color',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.0),
                    ),
                    const SizedBox(height: 15.0),
                    ColorSelector(
                      colors: [Colors.red.shade700, Colors.black, Colors.blue],
                      selectedColor: _selectedColor,
                      onColorSelected: (color) {
                        setState(() => _selectedColor = color);
                      },
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Size',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.0),
                    ),
                    const SizedBox(height: 15.0),
                    SizeSelector(
                      sizes: const ["13\"", "14\"", "15\"", "16\""],
                      selectedSize: _selectedSize,
                      onSizeSelected: (size) {
                        setState(() => _selectedSize = size);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}