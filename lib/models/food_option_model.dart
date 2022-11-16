// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodOptionModel {
  final String title;
  final String imagePath;
  final double price;

  FoodOptionModel({
    required this.title,
    required this.imagePath,
    required this.price,
  });
}

final foodOptions = [
  FoodOptionModel(
      title: 'Salmon', imagePath: 'assets/icons/salmon.png', price: 1.5),
  FoodOptionModel(
      title: 'Sushi Rice', imagePath: 'assets/icons/rice-bowl.png', price: 1.0),
  FoodOptionModel(
      title: 'Rice Wine', imagePath: 'assets/icons/rice-wine.png', price: 2.0),
  FoodOptionModel(
      title: 'Wasabi', imagePath: 'assets/icons/wasabi.png', price: 0.5),
  FoodOptionModel(
      title: 'Kimchi', imagePath: 'assets/icons/kimchi.png', price: 1.2),
  FoodOptionModel(
      title: 'Hot Soup', imagePath: 'assets/icons/soup.png', price: 1),
];

final List<FoodOptionModel> selectedOption = [];
