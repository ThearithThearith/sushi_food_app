import 'package:flutter/material.dart';
import 'package:sushi_food_app/models/food_option_model.dart';

class FoodOptionChip extends StatelessWidget {
  const FoodOptionChip({
    Key? key,
    required this.isSelected,
    required this.foodOption,
    this.isLast = false,
  }) : super(key: key);

  final bool isSelected;
  final FoodOptionModel foodOption;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isLast ? null : const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0XFF2b2e3b) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Row(
        children: [
          Image.asset(
            foodOption.imagePath,
            height: 22,
          ),
          const SizedBox(width: 8),
          Text(
            foodOption.title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
