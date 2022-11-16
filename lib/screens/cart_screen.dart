import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';
import 'package:sushi_food_app/models/cart_model.dart';
import 'package:sushi_food_app/widgets/cart_app_bar.dart';
import 'package:sushi_food_app/widgets/cart_item_box.dart';
import 'package:sushi_food_app/widgets/cart_promo_code.dart';
import 'package:sushi_food_app/widgets/cart_row.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double? _subTotal;
  double? _total;
  double _deliveryPrice = 1.50;

  @override
  void initState() {
    updateAllPrice();
    super.initState();
  }

  void increaseAmount(CartModel cartItem) {
    setState(() {
      cartItem.amount++;
      updateAllPrice();
    });
  }

  void decreaseAmount(CartModel cartItem) {
    if (cartItem.amount > 1) {
      setState(() {
        cartItem.amount--;
        updateAllPrice();
      });
    }
  }

  void updateAllPrice() {
    _subTotal = 0;
    for (var item in shoppingCarts) {
      _subTotal = _subTotal! + item.foodModel.price * item.amount;
    }
    _deliveryPrice = (_subTotal! > 50) ? 0 : 1.50;
    _total = _subTotal! + _deliveryPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kAppDefaultPadding),
            child: Column(
              children: [
                // App Bar
                const CartAppBar(),
                const SizedBox(height: 20),

                // List of item in cart
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: shoppingCarts.length,
                  itemBuilder: (context, index) {
                    return CartItemBox(
                      cartItem: shoppingCarts[index],
                      increaseAmount: increaseAmount,
                      decreaseAmount: decreaseAmount,
                    );
                  },
                ),

                const SizedBox(height: 20),

                // coupon
                const CartPromoCode(),
                const SizedBox(height: 30),

                // item total
                CartRow(title: 'Total item:', totalPrice: _subTotal),
                const SizedBox(height: 20),
                // delivery
                CartRow(title: 'Delivery:', totalPrice: _deliveryPrice),
                const SizedBox(height: 30),
                DottedLine(
                  dashLength: 8,
                  dashGapLength: 10,
                  dashColor: Colors.grey.shade300,
                  lineThickness: 1.2,
                ),
                const SizedBox(height: 30),

                // Total Price
                CartRow(
                  title: 'Total',
                  isTotal: true,
                  totalPrice: _total,
                ),
                const SizedBox(height: 30),

                // Payment Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kAppButtonColor,
                    shape: const StadiumBorder(),
                    minimumSize: const Size(double.infinity, 60),
                  ),
                  child: const Text(
                    'Payment',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
