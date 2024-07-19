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
class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
                    MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
                    MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
                    MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
                    MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
                    MyElevatedButton(title: "SCIENCE", onPressFunction: () {}),
                  ],
                ),
              ),
              const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomBoxImage(
                          imagelink: "assets/images/png/index_pic_1.png"),
                      CustomBoxImage(
                          imagelink: "assets/images/png/index_pic_2.png"),
                      CustomBoxImage(
                          imagelink: "assets/images/png/index_pic_3.png"),
                      CustomBoxImage(
                          imagelink: "assets/images/png/index_pic_1.png"),
                      CustomBoxImage(
                          imagelink: "assets/images/png/index_pic_2.png"),
                      CustomBoxImage(
                          imagelink: "assets/images/png/index_pic_3.png"),
                    ],
                  )),

              //////////// this is the row of the #icon  #data  #icon
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                height: context.contextHeight * 0.12,
                width: context.contextWidth * 0.95,
                decoration: BoxDecoration(
                    color: Color(0x44FCDB00),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.school_outlined,
                      size: 35,
                      weight: 0.3,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Completed",
                          style: KTextStyle.K_10.copyWith(color: Colors.green),
                        ),
                        Text(
                          "Introduction",
                          style: KTextStyle.K_12
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "In the lessns we leran new words and rules\nfor vacalaburities continues and articles",
                          style: KTextStyle.K_10
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 25,
                    ),
                  ],
                ),
              ),
              /////////// this is container data
              Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 15),
                      itemCount: 200,
                      itemBuilder: (context, index) {
                        // here implemnted ink well only for test
                        return InkWell(
                            onTap: () {
                              context.router.pushNamed(RoutesName.indexcopy1);
                            },
                            child: ContainerBox());
                      }))
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
      padding: const EdgeInsets.only(left: 0, top: 10),
      child: Container(
          height: 25,
          width: 65,
          decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              title,
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
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(5),
        // height: 456,
        // width: 170,
        decoration: BoxDecoration(
            color: Color(0x24FCDB00),
            border: Border.all(color: MyColor.black),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "100 Essential \nGrammer",
              style: KTextStyle.K_15,
            ),
            (context.contextHeight * .01).heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/png/index_box.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: const Text(
                    "in this lesson we \nlearn new words",
                    style: KTextStyle.K_12,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.symmetric(vertical: 4),
              height: 4,
            )
            //progressor bar
            ,
            const Text(
              "Completed 12 of 12",
              style: TextStyle(color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
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
        ));
  }
}
