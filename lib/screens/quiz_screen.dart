import 'package:flutter/material.dart';
import 'package:quiz_template_apk/constants.dart';
import 'package:quiz_template_apk/screens/score_screen.dart';
import 'package:quiz_template_apk/widgets/closequiz_button.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_template_apk/widgets/sugestion_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen(
      {super.key, required this.quizName, required this.quizNumber});
  final String quizName;
  final String quizNumber;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const CloseQuizButton()),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        LinearPercentIndicator(
                          width: MediaQuery.sizeOf(context).width / 1.7,
                          percent: 0.50,
                          lineHeight: 15,
                          progressColor: const Color(0XFFF27F1B),
                        ),
                        Text("5/${widget.quizNumber}",
                            style: TextStyle(
                                color: Constants().background2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.red),
              ),
              Stack(alignment: Alignment.center, children: [
                Container(
                  width: 350,
                  height: 220,
                  decoration: BoxDecoration(
                      color: const Color(0XFF94D7F2).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "afficher les questions des quiz ici afficher les questions des quiz ici ",
                        style: TextStyle(
                            color: Constants().textGrasColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 5.0,
                      percent: 1.0,
                      center: const Text("30%"),
                      progressColor: Constants().background2,
                    ))
              ]),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isClick = !isClick;
                  });
                },
                child: SugestionWidget(
                  isClick: isClick,
                  proposition: "proposition 1",
                ),
              ),
              SugestionWidget(
                isClick: isClick,
                proposition: "proposition 2",
              ),
              SugestionWidget(
                isClick: isClick,
                proposition: "proposition 3",
              ),
              SugestionWidget(
                isClick: isClick,
                proposition: "proposition 4",
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ScoreScreen())));
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Constants().background2,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "Suivant",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
