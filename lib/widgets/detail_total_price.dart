import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';
import 'package:sushi_food_app/screens/cart_screen.dart';
import 'package:sushi_food_app/widgets/detail_price.dart';

class DetailTotalPriceAndPlaceOrder extends StatelessWidget {
  final double? totalPrice;
  const DetailTotalPriceAndPlaceOrder({
    Key? key,
    required this.width,
    required this.totalPrice,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDetailPlaceOrderHeight,
      width: width - (kAppDefaultPadding * 2),
      margin: const EdgeInsets.only(
        bottom: kDetailPlaceOrderMargin,
        left: kAppDefaultPadding,
        right: kAppDefaultPadding,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
        boxShadow: [
          const BoxShadow(
            color: Colors.white,
            blurRadius: 50,
            spreadRadius: 50,
            offset: Offset(0, 0),
          ),
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 3,
            spreadRadius: 3,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Total Price
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DetailPrice(price: totalPrice!),
              const Text('Total Price')
            ],
          ),
          // Place Order Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: kAppButtonColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                'Place Order',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
