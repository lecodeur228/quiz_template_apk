import 'package:flutter/material.dart';
import 'package:quiz_template_apk/constants.dart';
import 'package:quiz_template_apk/screens/quiz_screen.dart';
import 'package:quiz_template_apk/widgets/quiz_card.dart';
import 'package:quiz_template_apk/widgets/rewardCard_widget.dart';
import 'package:quiz_template_apk/widgets/userInfo_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, dynamic>> data = [
    {
      "image": "assets/images/baskette.png",
      "name": "Sports",
      "questions": 50,
    },
    {
      "image": "assets/images/cuv.png",
      "name": "Chemistry",
      "questions": 30,
    },
    {
      "image": "assets/images/math.png",
      "name": "Math",
      "questions": 95,
    },
    {
      "image": "assets/images/calendar.png",
      "name": "History",
      "questions": 128,
    },
    {
      "image": "assets/images/adn.png",
      "name": "Biological",
      "questions": 80,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().background,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const UserInfoWidget(
                  userName: "Irin",
                  subText: "Faisons de ce jour productife",
                  profileUrl: "assets/images/user.png"),
              const SizedBox(
                height: 15,
              ),
              const Card(
                elevation: 1,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RewardCardWidget(
                          imageUrl: "assets/images/trophe.png",
                          name: "Ranking",
                          number: 348),
                      RewardCardWidget(
                          imageUrl: "assets/images/coins.png",
                          name: "Points",
                          number: 1209),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text("Jouer",
                  style: TextStyle(
                      color: Constants().textGrasColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                child: MasonryGridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map<String, dynamic> itemData = data[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => QuizScreen(
                                    quizName: itemData['name'],
                                    quizNumber:
                                        itemData['questions'].toString()))));
                      },
                      child: QuizCard(
                          imageUrl: itemData['image'],
                          name: itemData['name'],
                          nbrQuestion: itemData['questions'].toString()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
