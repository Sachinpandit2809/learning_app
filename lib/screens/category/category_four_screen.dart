import "package:auto_route/annotations.dart";
import "package:flutter/material.dart";
import "package:learning_app/colors/my_color.dart";
import "package:learning_app/extension/context_extension.dart";
import "package:learning_app/extension/num_extension.dart";
import "package:learning_app/screens/category/mydrawer_screen.dart";
import "package:learning_app/styles/text_style.dart";

@RoutePage()
class CategoryFourScreen extends StatefulWidget {
  const CategoryFourScreen({super.key});

  @override
  State<CategoryFourScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MydrawerScreen(),
      backgroundColor: Color.fromARGB(231, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7B500),
        title: Text(
          "SAMOHWOL",
          style: KTextStyle.K_20,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/png/profile2.png"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color(0xFFF7B500),
                  Color(0xFFFCDB00),
                  // Color(0xFFF7B500),
                  Color(0xFFFCDB00),
                  Color(0xFFF7B500),
                  // Color(0xFFF7B500),
                ])),
            height: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RATING",
                      style: KTextStyle.K_34.copyWith(fontSize: 40),
                    ),
                    Text(
                      "Essential Grammer",
                      style: KTextStyle.K_20,
                    ),
                    Text(
                      "In the lesson we  are learnin new\nwords and new rules for\nvacalaburaties",
                      style: KTextStyle.K_12,
                    ),
                  ],
                ),
                Icon(Icons.collections_bookmark, size: 80, color: Colors.white)
              ],
            ),
            // color: Colors.white,
          ),
          (context.contextHeight * 0.03).heightBox,
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10
                ),
                itemCount: 235,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/png/profile.png"),
                        ),
                        Text("Dana Koprvota", style: KTextStyle.K_12),
                        Text("Student",
                            style:
                                KTextStyle.K_10.copyWith(color: Colors.orange)),
                        // Icon(Icons.arrow_drop_down_sharp, size: 35)
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
