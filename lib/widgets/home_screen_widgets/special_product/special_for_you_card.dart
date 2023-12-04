import 'package:flutter/material.dart';

class SpecialForYouCard extends StatelessWidget {
  final double? width;

  const SpecialForYouCard({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      width: width ?? 270,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: const DecorationImage(
          image: NetworkImage('https://via.placeholder.com/150'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Computers',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
