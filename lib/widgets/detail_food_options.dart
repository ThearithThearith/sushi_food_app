// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sushi_food_app/models/food_option_model.dart';
import 'package:sushi_food_app/widgets/food_option_chip.dart';

class DetailFoodOptions extends StatelessWidget {
  const DetailFoodOptions({
    Key? key,
    required this.onOptionSelected,
  }) : super(key: key);
  final void Function(FoodOptionModel option) onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodOptions.length,
        itemBuilder: (context, index) {
          bool isSelected = selectedOption.contains(foodOptions[index]);

          return GestureDetector(
            onTap: () {
              onOptionSelected(foodOptions[index]);
            },
            child: FoodOptionChip(
              isSelected: isSelected,
              foodOption: foodOptions[index],
              isLast: index + 1 == foodOptions.length,
            ),
          );
        },
      ),
    );
  }
}
