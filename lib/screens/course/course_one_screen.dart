import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/screens/category/reusable_widgets.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class CourseOneScreen extends StatefulWidget {
  const CourseOneScreen({super.key});

  @override
  State<CourseOneScreen> createState() => _CourseOneScreenState();
}

class _CourseOneScreenState extends State<CourseOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/images/png/lesson1.png"),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/png/index_box.png"),
                        ),
                        Text(
                          "in this lecture we will learn about new rules",
                          style: KTextStyle.K_15,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "finish 2 out of 12",
                        style: KTextStyle.K_12.copyWith(color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey)),
                        height: 5,
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const CourseListContainer(
                            titleColor: Colors.green,
                            title1: "Complete",
                            title2: "introduction",
                            title3:
                                "In the lessns we leran new words and rules \nfor vacalaburities continues and articles");
                      }))
            ],
          ),
          CourseBottomContainerTitleButton(
              title: "select your study ",
              bgColor: Colors.white,
              buttonTitle: "SELECT")
        ],
      ),
    );
  }
}
