import 'package:flutter/material.dart';

class FoodPrice extends StatelessWidget {
  final double price;
  const FoodPrice({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 3, right: 3),
          child: Text(
            '\$',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Text(
          price.toStringAsFixed(2),
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
