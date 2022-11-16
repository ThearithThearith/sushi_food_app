// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';

import 'package:sushi_food_app/models/cart_model.dart';
import 'package:sushi_food_app/widgets/food_price.dart';

class CartItemBox extends StatelessWidget {
  final CartModel cartItem;
  final void Function(CartModel) increaseAmount;
  final void Function(CartModel) decreaseAmount;

  const CartItemBox({
    Key? key,
    required this.cartItem,
    required this.increaseAmount,
    required this.decreaseAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAmountTooLow = cartItem.amount <= 1;

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          // Image
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0XFFFAFAFA),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset(cartItem.foodModel.image),
          ),

          // Title  + Price + Amount
          Expanded(
            child: SizedBox(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title
                  Text(
                    cartItem.foodModel.title,
                    style: const TextStyle(fontSize: 20),
                  ),

                  // Price + Amount
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FoodPrice(price: cartItem.foodModel.price),
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // remove
                            IconButton(
                              onPressed: isAmountTooLow
                                  ? null
                                  : () {
                                      decreaseAmount(cartItem);
                                    },
                              icon: Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: isAmountTooLow
                                            ? Colors.grey
                                            : kAppButtonColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Icon(Icons.remove)),
                            ),
                            // amount
                            Text(
                              cartItem.amount.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                            // add
                            IconButton(
                              onPressed: () {
                                increaseAmount(cartItem);
                              },
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
