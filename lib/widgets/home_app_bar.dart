import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Menu
        Material(
          color: Colors.white,
          shape: const CircleBorder(),
          child: IconButton(
            padding: const EdgeInsets.all(12),
            onPressed: () {},
            icon: Image.asset('assets/icons/menu.png'),
          ),
        ),

        // Location
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                'Location',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Image.asset(
                  'assets/icons/location.png',
                  width: 20,
                ),
                const SizedBox(width: 4),
                const Text(
                  'Cambodia',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),

        // Notification
        Material(
          color: Colors.white,
          shape: const CircleBorder(),
          child: IconButton(
            padding: const EdgeInsets.all(12),
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/icons/notification.png',
                ),
                Positioned(
                  right: 0,
                  top: -3,
                  child: Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
