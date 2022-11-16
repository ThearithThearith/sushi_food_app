import 'package:flutter/material.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CartAppBar> createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Back
        Material(
          color: Colors.white,
          shape: const CircleBorder(),
          child: IconButton(
            padding: const EdgeInsets.all(12),
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
        ),

        // Detail
        const Text(
          'Your cart food',
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        // Favorited
        Material(
          color: Colors.white,
          shape: const CircleBorder(),
          child: IconButton(
            padding: const EdgeInsets.all(12),
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/menu3dot.png',
              height: 16,
            ),
          ),
        ),
      ],
    );
  }
}
