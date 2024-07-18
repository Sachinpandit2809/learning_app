import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/routes/routes_name.dart';
import 'package:learning_app/screens/category/mydrawer_screen.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class IndexcopyScreen extends StatefulWidget {
  const IndexcopyScreen({super.key});

  @override
  State<IndexcopyScreen> createState() => _IndexcopyScreenState();
}

class _IndexcopyScreenState extends State<IndexcopyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Gradient.linear(0, 100, Colors.red),
    drawer: MydrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade200,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/png/profile.png"),
            ),
          )
        ],
        centerTitle: true,
        title: Text(
          "Comoxval",
          style: KTextStyle.K_15.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.yellow.shade200,
                Colors.yellow.shade200,
                //  Colors.blue.shade300,
                Colors.white60,
                Colors.white60
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
              //       MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
              //       MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
              //       MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
              //       MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
              //       MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
              //     ],
              //   ),
              // ),
              Container(
                height: 200, // Set a height for the ListView
                child: ListView.builder(
                  scrollDirection:
                      Axis.horizontal, // Set the scroll direction to horizontal
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.asset(
                        "assets/images/png/index2_box2.png",
                        width: 370, // Set a width for each image
                      ),
                    );
                  },
                ),
              ),

              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Your Progress",
                        style: KTextStyle.K_20
                            .copyWith(fontWeight: FontWeight.w300)),
                  )),

              /////////// this is container data
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            context.router.pushNamed(RoutesName.indexcopy2);
                          },
                          child: NContainerBox());
                    }),
              )
              //next
            ],
          )),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressFunction;
  const MyElevatedButton(
      {super.key, required this.title, required this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.65),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressFunction,
          child: Text(
            "SCIENCE",
            style: KTextStyle.K_12.copyWith(letterSpacing: 1.4),
          )),
    );
  }
}

class CustomBoxImage extends StatelessWidget {
  final String imagelink;
  const CustomBoxImage({super.key, required this.imagelink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset(imagelink),
          Positioned(
              top: 100,
              child: Container(
                width: 133,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.school_sharp,
                      color: MyColor.white,
                    ),
                    Text("Gift Box",
                        style: KTextStyle.K_15.copyWith(
                          color: MyColor.white,
                          // fontWeight: FontWeight.normal)
                        )),
                    2.widthBox
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class CustomColorButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressFunction;
  final Color color;
  const CustomColorButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 20),
      child: Container(
          height: 25,
          width: 65,
          decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              "Subscribe",
              style: KTextStyle.K_8.copyWith(letterSpacing: 1.4, color: color),
            ),
          )),
    );
  }
}

class NContainerBox extends StatelessWidget {
  const NContainerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        height: 246,
        width: 170,
        decoration: BoxDecoration(
            color: MyColor.white,
            border: Border.all(color: MyColor.black),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            const Text(
              "100 Essential \n Grammer",
              style: KTextStyle.K_18,
            ),
            (context.contextHeight * .01).heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/png/index_box.png"),
                Text(
                  "in this lesson we \nlearn new words",
                  style: KTextStyle.K_12,
                ),
              ],
            ),
            Container(margin: EdgeInsets.all(5), height: 5, color: Colors.green)
            //progressor bar
            ,
            Text(
              "Completed 12 of 12",
              style: TextStyle(color: Colors.green),
            ),
            FlexibleCustomColorButton(
                title: "Reputation from 24 hour",
                color: Colors.blue,
                onPressFunction: () {})
          ],
        ));
  }
}

class FlexibleCustomColorButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressFunction;
  final Color color;
  const FlexibleCustomColorButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 20),
      child: Container(
          height: 25,
          width: 145,
          decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              "Subscribe",
              style: KTextStyle.K_8.copyWith(letterSpacing: 1.4, color: color),
            ),
          )),
    );
  }
}
