// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sushi_food_app/widgets/detail_price.dart';

class DetailPriceAmount extends StatelessWidget {
  const DetailPriceAmount({
    Key? key,
    required this.price,
    required this.amount,
    required this.decreaseFoodAmount,
    required this.increaseFoodAmount,
  }) : super(key: key);

  final double price;
  final int amount;
  final VoidCallback decreaseFoodAmount;
  final VoidCallback increaseFoodAmount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // price
        DetailPrice(price: price),

        // amount
        Container(
          width: 130,
          height: 52,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: amount <= 1
                    ? null
                    : () {
                        decreaseFoodAmount();
                      },
                icon: const Icon(Icons.remove),
              ),
              const SizedBox(width: 5),
              Text(
                amount.toString(),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 5),
              IconButton(
                onPressed: () => increaseFoodAmount(),
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ],
    );
  }
}
