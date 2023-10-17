import 'package:flutter/material.dart';
import 'package:quiz_template_apk/constants.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({super.key, required this.imageUrl, required this.name, required this.nbrQuestion});
  final String imageUrl;
  final String name;
  final String nbrQuestion;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(imageUrl, width: 90),
            const SizedBox(
              height: 10,
            ),
            Text(name,
                style: TextStyle(
                    color: Constants().textGrasColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text("$nbrQuestion Questions",
                style: TextStyle(
                    color: Constants().textGrasColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
