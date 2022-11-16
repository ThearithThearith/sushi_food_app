// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:sushi_food_app/models/food_model.dart';

class CartModel {
  final FoodModel foodModel;
  int amount;

  CartModel({
    required this.foodModel,
    required this.amount,
  });
}

List<CartModel> shoppingCarts = [
  CartModel(
    foodModel: FoodModel(
      id: 1,
      title: 'Shabu Shabu',
      image: 'assets/foods/shrimp.png',
      price: 5.5,
      rating: 4.7,
    ),
    amount: 2,
  ),
  CartModel(
    foodModel: FoodModel(
      id: 6,
      title: 'Takoyaki',
      image: 'assets/foods/tempura.png',
      price: 5.5,
      rating: 4.9,
    ),
    amount: 1,
  ),
  CartModel(
    foodModel: FoodModel(
      id: 10,
      title: 'Unagi',
      image: 'assets/foods/sushi1.png',
      price: 5.5,
      rating: 4.9,
    ),
    amount: 2,
  ),
  CartModel(
    foodModel: FoodModel(
      id: 5,
      title: 'Udon',
      image: 'assets/foods/ramen.png',
      price: 5.7,
      rating: 5,
    ),
    amount: 3,
  ),
];
