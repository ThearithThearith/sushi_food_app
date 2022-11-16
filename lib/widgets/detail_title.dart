import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key? key,
    required this.title,
    required this.rating,
  }) : super(key: key);

  final double rating;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Title
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(
              Icons.star_rate_rounded,
              color: Colors.orange,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                rating.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ],
    );
  }
}
