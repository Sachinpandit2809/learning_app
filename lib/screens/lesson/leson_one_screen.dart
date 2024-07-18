import "package:auto_route/annotations.dart";
import "package:flutter/material.dart";
import "package:learning_app/colors/my_color.dart";
import "package:learning_app/extension/context_extension.dart";
import "package:learning_app/screens/index/index_screen.dart";
import "package:learning_app/styles/text_style.dart";

@RoutePage()
class LesonOneScreen extends StatefulWidget {
  const LesonOneScreen({super.key});

  @override
  State<LesonOneScreen> createState() => _LesonOneScreenState();
}

class _LesonOneScreenState extends State<LesonOneScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var tabController;
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFf5f1e1),
          toolbarHeight: context.contextHeight * 0.41,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.circle_outlined),
                  const Text(
                    "   ESSENTIAL GRAMMER  ",
                    style: KTextStyle.K_15,
                  ),
                  Image.asset("assets/images/png/profile3.png")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: Image.asset("assets/images/png/cap.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "   ESSENTIAL GRAMMER  ",
                  style: KTextStyle.K_20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: const Text(
                  "LESSON 1",
                  style: KTextStyle.K_12,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: const Text(
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
              )
              //next appBAr widgets
            ],
          ),
          bottom: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFFF7B500),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              controller: tabController,
              dividerColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              tabs: const [
                Center(child: Text("LESSON")),
                Center(child: Text("COMMENTS"))
              ]),
        ),
        body: TabBarView(
          controller: tabController,
          children: [Text("data  1  "), Text(" data  2")],
        ),
      ),
    );
  }
}
