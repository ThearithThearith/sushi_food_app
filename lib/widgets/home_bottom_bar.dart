import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'assets/icons/home.png',
                  width: 30,
                  color: kAppButtonColor,
                ),
              ),
              Positioned(
                bottom: -16,
                left: -8,
                child: Image.asset(
                  'assets/icons/hidden-monster.png',
                  width: 50,
                ),
              ),
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/discount.png',
            width: 30,
            color: kAppButtonColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/favorite.png',
            width: 30,
            color: kAppButtonColor,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/user.png',
            width: 30,
            color: kAppButtonColor,
          ),
          label: '',
        ),
      ],
    );
  }
}
