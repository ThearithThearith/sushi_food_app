import 'package:flutter/material.dart';
import 'package:sushi_food_app/models/food_model.dart';
import 'package:sushi_food_app/widgets/food_box.dart';

class HomePopularFood extends StatelessWidget {
  const HomePopularFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.25,
        ),
        itemCount: popularFoods.length,
        itemBuilder: (context, index) {
          return FoodBox(food: popularFoods[index]);
        },
      ),
    );
  }
}
