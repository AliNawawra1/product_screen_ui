import 'package:flutter/material.dart';

class FeaturedBestProductCard extends StatelessWidget {
  const FeaturedBestProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(
                children: [
                  Image.network('https://via.placeholder.com/150',
                      fit: BoxFit.cover),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: Material(
                      elevation: 10.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(8.0),
                      ),
                      child: Icon(Icons.favorite_border,
                          color: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            '   Product Name',
            style: TextStyle(fontSize: 14.0),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const Text(
            '   \$Price',
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurpleAccent),
          ),
        ],
      ),
    );
  }
}
