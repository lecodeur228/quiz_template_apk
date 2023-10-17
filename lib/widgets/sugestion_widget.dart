import 'package:flutter/material.dart';

class SugestionWidget extends StatelessWidget {
  SugestionWidget({required this.isClick, super.key, required this.proposition});
  final String proposition;
  bool isClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            textAlign: TextAlign.center,
            proposition,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          isClick
              ? Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Icon(Icons.close_sharp),
                )
              : const Text(""),
        ],
      ),
    );
  }
}
