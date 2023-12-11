import 'package:flutter/material.dart';

class CustomImageListView extends StatelessWidget {
  final double height;
  final double? itemWidth;
  final int itemCount;
  final double elevation;
  final double borderRadius;
  final EdgeInsets margin;
  final String imageUrl;
  final BoxFit imageFit;

  const CustomImageListView({
    Key? key,
    required this.height,
    this.itemWidth,
    this.itemCount = 10,
    this.elevation = 3.0,
    this.borderRadius = 10.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
    this.imageUrl = 'https://via.placeholder.com/150',
    this.imageFit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) => Container(
          width: itemWidth,
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Material(
            elevation: elevation,
            borderRadius: BorderRadius.circular(borderRadius),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image.network(imageUrl, fit: imageFit),
            ),
          ),
        ),
      ),
    );
  }
}

