import 'package:flutter/material.dart';

class CloseQuizButton extends StatelessWidget {
  const CloseQuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: const Icon(Icons.close),
    );
  }
}
