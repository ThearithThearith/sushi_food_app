import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';
import 'package:sushi_food_app/models/food_model.dart';
import 'package:sushi_food_app/screens/detail_screen.dart';
import 'package:sushi_food_app/widgets/food_price.dart';

class FoodBox extends StatelessWidget {
  final FoodModel food;
  const FoodBox({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(food: food),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.star_rate_rounded,
                  color: Colors.orange,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(food.rating.toString()),
                ),
                const SizedBox(width: 10),
              ],
            ),
            const SizedBox(height: 5),
            // Image
            Image.asset(food.image, width: 90),
            const SizedBox(height: 10),
            // Title
            SizedBox(
              width: double.infinity,
              child: Text(
                food.title,
                textAlign: TextAlign.left,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 5),
            // Price + Add to cart
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FoodPrice(price: food.price),
                InkWell(
                  onTap: () {
                    debugPrint('Add to cart');
                  },
                  child: Material(
                    color: kAppButtonColor,
                    shape: const CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'assets/icons/cart.png',
                        width: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
