import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 165,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0XFF2d2f3c),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title
                const Text(
                  'Get special discount',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),

                // Discount
                const Text(
                  'up to 85%',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),

                // Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Claim Voucher'),
                ),
              ],
            ),
          ),
          // Image
          Image.asset('assets/banner/ramen.png')
        ],
      ),
    );
  }
}
