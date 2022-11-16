import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  const DetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  bool _isFavorite = true;

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
          'Detail',
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
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
            icon: Image.asset(
              _isFavorite
                  ? 'assets/icons/favorited.png'
                  : 'assets/icons/favorite.png',
            ),
          ),
        ),
      ],
    );
  }
}
