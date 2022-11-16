import 'package:flutter/material.dart';

class DetailAboutSushi extends StatelessWidget {
  const DetailAboutSushi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'About Sushi',
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(height: 10),
        Text(
            'Sushi is a Japanese dish of prepared vinegared rice, usually with some sugar and salt, accompanied by a variety of ingredients, such as seafood, often raw, and vegetables. Styles of sushi and its presentation vary widely, but the one key ingredient is "sushi rice", also referred to as shari, or sumeshi.'),
      ],
    );
  }
}
