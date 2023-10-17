import 'package:flutter/material.dart';
import 'package:quiz_template_apk/constants.dart';

class RewardCardWidget extends StatelessWidget {
  const RewardCardWidget({super.key, required this.imageUrl, required this.name, required this.number});
  final String imageUrl;
  final String name;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          width: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              name,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              number.toString(),
              style: TextStyle(
                  fontSize: 18,
                  color: Constants().background2,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
