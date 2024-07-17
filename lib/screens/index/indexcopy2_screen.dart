import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class Indexcopy2Screen extends StatefulWidget {
  const Indexcopy2Screen({super.key});

  @override
  State<Indexcopy2Screen> createState() => _Indexcopy2ScreenState();
}

class _Indexcopy2ScreenState extends State<Indexcopy2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor:Gradient.linear(0, 100, Colors.red),
        drawer: Drawer(),
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
                Column(children: [
                  Container(
                      // color: Colors.white,

                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return Column(children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    height: 120,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundImage: AssetImage(
                                              "assets/images/png/profile.png"),
                                        ),
                                        Text("Dana Koprvota",
                                            style: KTextStyle.K_12),
                                        Text("Student",
                                            style: KTextStyle.K_10.copyWith(
                                                color: Colors.orange)),
                                        // Icon(Icons.arrow_drop_down_sharp, size: 35)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]);
                          })),
                ]),

                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: MyColor.white,
                              border: Border.all(color: Colors.grey.shade600)),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        18.0, 0, 8, 0),
                                    child: Image.asset(
                                        "assets/images/png/index_box.png"),
                                  ),
                                  Text(
                                    "in this lesson we \nlearn new words",
                                    style: KTextStyle.K_10,
                                  ),
                                ],
                              ),
                              5.heightBox,
                              Divider(
                                color: Colors.orange,
                                thickness: 4,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "Completed 12 of 12",
                                  style: KTextStyle.K_11
                                      .copyWith(color: Colors.orange),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )

                //next
              ],
            )));
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

class ContainerBox extends StatelessWidget {
  const ContainerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: EdgeInsets.all(5),
            height: 226,
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
                (context.contextHeight * .02).heightBox,
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
                Container(
                    margin: EdgeInsets.all(10), height: 5, color: Colors.green)
                //progressor bar
                ,
                Text(
                  "Completed 12 of 12",
                  style: TextStyle(color: Colors.green),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomColorButton(
                        title: "Reputation",
                        color: Colors.red,
                        onPressFunction: () {}),
                    CustomColorButton(
                        title: "Reputation",
                        color: Colors.blue,
                        onPressFunction: () {})
                  ],
                )
              ],
            )),
        Container(
            margin: EdgeInsets.all(5),
            height: 226,
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
                (context.contextHeight * .02).heightBox,
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
                Container(
                    margin: EdgeInsets.all(10), height: 5, color: Colors.green)
                //progressor bar
                ,
                Text(
                  "Completed 12 of 12",
                  style: TextStyle(color: Colors.green),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomColorButton(
                        title: "Reputation",
                        color: Colors.red,
                        onPressFunction: () {}),
                    CustomColorButton(
                        title: "Reputation",
                        color: Colors.blue,
                        onPressFunction: () {})
                  ],
                )
              ],
            )),
      ],
    );
  }
}
