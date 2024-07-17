import "package:auto_route/annotations.dart";
import "package:flutter/material.dart";
import "package:learning_app/colors/my_color.dart";
import "package:learning_app/styles/text_style.dart";

@RoutePage()
class CategoryThreeScreen extends StatefulWidget {
  const CategoryThreeScreen({super.key});

  @override
  State<CategoryThreeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text("SAMOHAL", style: KTextStyle.K_20),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/png/profile.png"),
              ),
            ),
          ],
          backgroundColor: MyColor.yellow.withOpacity(0.2),
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                MyColor.yellow.withOpacity(0.2),
                MyColor.yellow.withOpacity(0.01),
                // Colors.purple
              ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: const GradientRotation(1))),
          child: Column(
            children: [
              const Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image(
                      //     image:
                      //         AssetImage("assets/images/png/index_pic_1.png")),

                      Icon(
                        Icons.save_alt,
                        size: 180,
                        color: Colors.orange,
                        weight: 10,
                      ),
                      Text(
                        "Rating : 4.9",
                        style: KTextStyle.K_20,
                      )
                    ],
                  )),
              Expanded(
                child: ListView.builder(
                    itemCount: 26,
                    itemBuilder: (context, index) {
                      return Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: MyColor.white,

                              child: Icon(
                                Icons.save_alt,
                                color: Colors.orange,
                              ),
                              //   backgroundImage: index % 2 == 0
                              //       ? AssetImage("assets/images/png/profile2.png")
                              //       : AssetImage(
                              //           "assets/images/png/profile3.png"),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lecture ",
                                    style: KTextStyle.K_15,
                                  ),
                                  Text(
                                    "in this lesson we will lwarn new words\n and vacaaburities continue and article ",
                                    style: KTextStyle.K_11,
                                  ),
                                  // Text(
                                  //   "Completed",
                                  //   style: KTextStyle.K_12
                                  //       .copyWith(color: Colors.green),
                                  // )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              ),
                            )
                          ],
                        ),
                        margin: const EdgeInsets.all(5),
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white60),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
