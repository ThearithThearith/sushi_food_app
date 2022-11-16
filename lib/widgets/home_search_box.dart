import 'package:flutter/material.dart';

class HomeSearchBox extends StatelessWidget {
  const HomeSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        prefixIconConstraints:
            const BoxConstraints(minWidth: 60, minHeight: 45),
        prefixIcon: Container(
          margin: const EdgeInsets.only(left: 15),
          padding: const EdgeInsets.all(12),
          width: 16,
          height: 16,
          child: Image.asset(
            'assets/icons/search.png',
            fit: BoxFit.fitHeight,
            color: Colors.black54,
          ),
        ),
        hintText: 'Search your food ...',
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
