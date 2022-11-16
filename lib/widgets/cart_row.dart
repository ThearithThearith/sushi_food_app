// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CartRow extends StatelessWidget {
  final String title;
  final double? totalPrice;
  final bool isTotal;

  const CartRow({
    Key? key,
    required this.title,
    this.totalPrice,
    this.isTotal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double titleFontSize = isTotal ? 20 : 16;
    double priceFontSize = isTotal ? 22 : 18;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: titleFontSize,
              color: isTotal ? Colors.black : Colors.grey),
        ),
        Text(
          totalPrice == null || totalPrice! <= 0
              ? 'Free'
              : '\$${totalPrice!.toStringAsFixed(2)}',
          style: TextStyle(fontSize: priceFontSize, color: Colors.black87),
        ),
      ],
    );
  }
}
