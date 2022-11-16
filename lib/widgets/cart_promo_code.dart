import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';

class CartPromoCode extends StatelessWidget {
  const CartPromoCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Container(
          width: 50,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(right: 20),
          child: Image.asset(
            'assets/icons/voucher.png',
            color: Colors.grey,
            width: 12,
          ),
        ),
        hintText: 'Promo Code',
        suffixIcon: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            backgroundColor: kAppButtonColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Apply',
            style: TextStyle(fontSize: 18),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
