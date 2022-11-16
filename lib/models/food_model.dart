// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodModel {
  final int id;
  final String title;
  final String image;
  final double price;
  final double rating;

  FoodModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  });
}

final popularFoods = [
  FoodModel(
    id: 1,
    title: 'Shabu Shabu',
    image: 'assets/foods/shrimp.png',
    price: 5.5,
    rating: 4.7,
  ),
  FoodModel(
    id: 2,
    title: 'Okonomiyaki',
    image: 'assets/foods/futomaki.png',
    price: 8.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 3,
    title: 'Miso Soup',
    image: 'assets/foods/gunkan.png',
    price: 3.8,
    rating: 4.8,
  ),
  FoodModel(
    id: 4,
    title: 'Yakitori',
    image: 'assets/foods/mochi.png',
    price: 6.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 5,
    title: 'Udon',
    image: 'assets/foods/ramen.png',
    price: 5.7,
    rating: 5,
  ),
  FoodModel(
    id: 6,
    title: 'Takoyaki',
    image: 'assets/foods/tempura.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 7,
    title: 'Soba',
    image: 'assets/foods/sushi4.png',
    price: 5.9,
    rating: 4.6,
  ),
  FoodModel(
    id: 8,
    title: 'Sukiyaki',
    image: 'assets/foods/sushi3.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 9,
    title: 'Sashimi',
    image: 'assets/foods/sushi2.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 10,
    title: 'Unagi',
    image: 'assets/foods/sushi1.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 11,
    title: 'Tofu',
    image: 'assets/foods/sushi.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 12,
    title: 'Onigiri',
    image: 'assets/foods/sashimi.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 13,
    title: 'Wagashi',
    image: 'assets/foods/bento.png',
    price: 5.5,
    rating: 4.9,
  ),
  FoodModel(
    id: 14,
    title: 'Natto',
    image: 'assets/foods/ramen1.png',
    price: 5.5,
    rating: 4.9,
  ),
];
