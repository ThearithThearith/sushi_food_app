import 'package:flutter/material.dart';
import 'package:sushi_food_app/constant/app_constant.dart';
import 'package:sushi_food_app/widgets/home_app_bar.dart';
import 'package:sushi_food_app/widgets/home_banner.dart';
import 'package:sushi_food_app/widgets/home_bottom_bar.dart';
import 'package:sushi_food_app/widgets/home_popular_food.dart';
import 'package:sushi_food_app/widgets/home_search_box.dart';
import 'package:sushi_food_app/widgets/scroll_to_hide_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kAppDefaultPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Appbar
                const HomeAppBar(),
                const SizedBox(height: 20),

                // Banner
                const HomeBanner(),
                const SizedBox(height: 20),

                // Search
                const HomeSearchBox(),
                const SizedBox(height: 30),

                // Popular Food
                // Section Title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Popular Food',
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const HomePopularFood(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ScrollToHideWidget(
        scrollController: _scrollController,
        height: kAppBottomHeight,
        child: const HomeBottomBar(),
      ),
    );
  }
}
