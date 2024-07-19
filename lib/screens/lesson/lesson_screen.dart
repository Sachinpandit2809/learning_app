import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/routes/routes_name.dart';
import 'package:learning_app/screens/category/mydrawer_screen.dart';
import 'package:learning_app/screens/index/index_screen.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MydrawerScreen(),
      backgroundColor: Color(0xFFf5f1e1),
      appBar: AppBar(
        backgroundColor: Color(0xFFf5f1e1),
        // leading: InkWell(
        //     onTap: () {
        //       MydrawerScreen();
        //     },
        //     child: Icon(Icons.circle_outlined)),
        title: const Text(
          "   ESSENTIAL GRAMMER  ",
          style: KTextStyle.K_20,
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/png/profile3.png"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: Image.asset("assets/images/png/cap.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "   ESSENTIAL GRAMMER  ",
              style: KTextStyle.K_20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "LESSON 1",
              style: KTextStyle.K_12,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "in this lesson we learn about vocabularies ",
              style: KTextStyle.K_11,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomColorButton(
                    title: "7 Days",
                    color: Color(0xFF6D7278),
                    onPressFunction: () {}),
                CustomColorButton(
                    title: "Reputation",
                    color: Color(0xFFFA6400),
                    onPressFunction: () {}),
                CustomColorButton(
                    title: "24 Lesson",
                    color: Color(0xFF0091FF),
                    onPressFunction: () {})
              ],
            ),
          ),
          const Divider(
            height: 20,
            thickness: 1.5,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.router.pushNamed(RoutesName.lesson_one);
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 98,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        topLeft: Radius.circular(12)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/png/index_pic_1.png"))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Best class behavier ",
                                    style: KTextStyle.K_18,
                                  ),
                                  Text(
                                    "In this lesson we learn about new rules ",
                                    style: KTextStyle.K_12,
                                  ),
                                  Text(
                                    "Free 65 ",
                                    style: KTextStyle.K_15.copyWith(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                ),
                              )
                            ],
                          )),
                    );
                  }))
        ],
      ),
    );
  }
}
