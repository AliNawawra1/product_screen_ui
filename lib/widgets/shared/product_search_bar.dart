import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  final double? width;
  final double elevation;

  const ProductSearchBar({
    Key? key,
    this.width,
    this.elevation = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        height: 40.0,
        width: width ?? 220.0,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: 'Search Product',
            prefixIcon:
                const Icon(Icons.search, color: Colors.deepPurpleAccent),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none),
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
          ),
        ),
      ),
    );
  }
}
