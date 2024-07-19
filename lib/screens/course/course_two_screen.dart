import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/routes/routes_name.dart';
import 'package:learning_app/screens/category/reusable_widgets.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class CourseTwoScreen extends StatefulWidget {
  const CourseTwoScreen({super.key});

  @override
  State<CourseTwoScreen> createState() => _CourseTwoScreenState();
}

class _CourseTwoScreenState extends State<CourseTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/images/png/lesson.png"),
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
                            color: Color(0xFF00FF00),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Color(0xDD00FF00),
                            )),
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
                        return InkWell(
                          onTap: () {
                            context.router.pushNamed(RoutesName.lesson);
                          },
                          child: const CourseListContainer(
                              titleColor: Colors.blue,
                              title1: "Complete",
                              title2: "introduction",
                              title3:
                                  "In the lessns we leran new words and rules \nfor vacalaburities continues and articles"),
                        );
                      }))
            ],
          ),
          CourseBottomContainerTitleButton(
              bgColor: Color(0xDDFFFFFF),
              title: "select your Learning",
              buttonTitle: "START")
        ],
      ),
    );
  }
}
