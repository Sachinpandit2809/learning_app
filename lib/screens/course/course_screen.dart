import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/screens/category/reusable_widgets.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
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
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                      "assets/images/png/index_pic_1.png")),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lesson ${index + 1}",
                                      style: KTextStyle.K_18,
                                    ),
                                    Text(
                                      "in this lesson we learn new words",
                                      style: KTextStyle.K_15,
                                    ),
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //       color: Colors.green,
                                    //       borderRadius: BorderRadius.circular(4),
                                    //       border: Border.all(color: Colors.grey)),
                                    //   height: 5,
                                    //   width: 250,
                                    // ),
                                    Text(
                                      "Completed",
                                      style: KTextStyle.K_12
                                          .copyWith(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }))
            ],
          ),
       
       CourseBottomContainerTitleButton(bgColor: Color(0xDD00FF00), title: "select your journey", buttonTitle: "start")
       ],
      ),
    );
  }
}
