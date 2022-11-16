// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';

import 'package:sushi_food_app/models/food_model.dart';
import 'package:sushi_food_app/models/food_option_model.dart';
import 'package:sushi_food_app/widgets/detail_about_sushi.dart';
import 'package:sushi_food_app/widgets/detail_app_bar.dart';
import 'package:sushi_food_app/widgets/detail_food_options.dart';
import 'package:sushi_food_app/widgets/detail_price_amount.dart';
import 'package:sushi_food_app/widgets/detail_title.dart';
import 'package:sushi_food_app/widgets/detail_total_price.dart';

class DetailScreen extends StatefulWidget {
  final FoodModel food;
  const DetailScreen({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _foodAmout = 1;
  double? _totalPrice;

  void increaseFoodAmount() {
    setState(() {
      _foodAmout++;
      updateTotalPrice();
    });
  }

  void decreaseFoodAmount() {
    if (_foodAmout > 1) {
      setState(() {
        _foodAmout--;
        updateTotalPrice();
      });
    }
  }

  void updateTotalPrice() {
    _totalPrice = widget.food.price * _foodAmout;

    for (var option in selectedOption) {
      _totalPrice = _totalPrice! + option.price;
    }
  }

  void onOptionSelected(FoodOptionModel option) {
    setState(() {
      if (selectedOption.contains(option)) {
        selectedOption.remove(option);
      } else {
        selectedOption.add(option);
      }
      updateTotalPrice();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kAppDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // App bar
                    const DetailAppBar(),

                    // Image
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Image.asset(widget.food.image),
                    ),

                    // Title + Rating
                    DetailTitle(
                      title: widget.food.title,
                      rating: widget.food.rating,
                    ),
                    const SizedBox(height: 20),

                    // Options

                    DetailFoodOptions(onOptionSelected: onOptionSelected),
                    const SizedBox(height: 20),

                    // Price + Order Amount
                    DetailPriceAmount(
                      price: widget.food.price,
                      amount: _foodAmout,
                      decreaseFoodAmount: decreaseFoodAmount,
                      increaseFoodAmount: increaseFoodAmount,
                    ),
                    const SizedBox(height: 30),

                    // About Sushi
                    const DetailAboutSushi(),
                    const SizedBox(height: kDetailAdditionalHeight),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Place Order And Total Price
          Positioned(
            bottom: 0,
            child: DetailTotalPriceAndPlaceOrder(
              width: width,
              totalPrice: _totalPrice ?? widget.food.price,
            ),
          )
        ],
      ),
    );
  }
}
