import 'package:flutter/material.dart';
import 'package:quiz_template_apk/constants.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget(
      {super.key,
      required this.userName,
      required this.subText,
      required this.profileUrl});
  final String userName;
  final String subText;
  final String profileUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Salut, $userName",
              style: TextStyle(
                  color: Constants().textGrasColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subText,
              style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(profileUrl),
        )
      ],
    );
  }
}
