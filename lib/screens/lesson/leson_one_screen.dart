import "package:auto_route/annotations.dart";
import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:learning_app/colors/my_color.dart";
import "package:learning_app/extension/context_extension.dart";
import "package:learning_app/k_widgets/profile_custom_color_buttom.dart";
import "package:learning_app/routes/routes_name.dart";
import "package:learning_app/screens/category/mydrawer_screen.dart";
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

  int _currentQuestionIndex = 0;
  int _score = 0;

  final List<Map<String, Object>> _questions = [
    {
      'question': '1 What is the capital of France?',
      'answers': [
        {'text': 'Berlin', 'score': 0},
        {'text': 'Madrid', 'score': 0},
        {'text': 'Paris', 'score': 1},
        {'text': 'Lisbon', 'score': 0},
      ],
    },
    {
      'question': '2 Who wrote "Hamlet"?',
      'answers': [
        {'text': 'Charles Dickens', 'score': 0},
        {'text': 'William Shakespeare', 'score': 1},
        {'text': 'Mark Twain', 'score': 0},
        {'text': 'Leo Tolstoy', 'score': 0},
      ],
    },
    {
      'question': '3 What is the largest planet in our Solar System?',
      'answers': [
        {'text': 'Earth', 'score': 0},
        {'text': 'Jupiter', 'score': 1},
        {'text': 'Saturn', 'score': 0},
        {'text': 'Mars', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _score += score;
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var tabController;
    return Scaffold(
      drawer: MydrawerScreen(),
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Color(0xFFf5f1e1),
        title: Text(
          "Quiz",
          style: KTextStyle.K_20,
        ),
        centerTitle: true,
        // toolbarHeight: context.contextHeight * 0.41,
        // flexibleSpace: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Icon(Icons.circle_outlined),
        //         const Text(
        //           "   ESSENTIAL GRAMMER  ",
        //           style: KTextStyle.K_15,
        //         ),
        //         Image.asset("assets/images/png/profile3.png")
        //       ],
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: CircleAvatar(
        //         radius: 45,
        //         backgroundColor: Colors.white,
        //         child: Image.asset("assets/images/png/cap.png"),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: const Text(
        //         "ESSENTIAL GRAMMER",
        //         style: KTextStyle.K_20,
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(4.0),
        //       child: const Text(
        //         "LESSON 1",
        //         style: KTextStyle.K_12,
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(4.0),
        //       child: const Text(
        //         "in this lesson we learn about vocabularies ",
        //         style: KTextStyle.K_11,
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           CustomColorButton(
        //               title: "7 Days",
        //               color: Color(0xFF6D7278),
        //               onPressFunction: () {}),
        //           CustomColorButton(
        //               title: "Reputation",
        //               color: Color(0xFFFA6400),
        //               onPressFunction: () {}),
        //           CustomColorButton(
        //               title: "24 Lesson",
        //               color: Color(0xFF0091FF),
        //               onPressFunction: () {})
        //         ],
        //       ),
        //     )
        //     //next appBAr widgets
        //   ],
        // ),
        // leading: null,
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
        children: [
          _currentQuestionIndex < _questions.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _questions[_currentQuestionIndex]['question'] as String,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    ...(_questions[_currentQuestionIndex]['answers']
                            as List<Map<String, Object>>)
                        .map((answer) {
                      return ElevatedButton(
                        onPressed: () =>
                            _answerQuestion(answer['score'] as int),
                        child: Text(answer['text'] as String),
                      );
                    }).toList(),
                  ],
                )
              : Center(
                  child: Text(
                    'You did it! Your score is $_score',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),

          ///////////////////////////////////////////////////////////////////
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Comments will be updateb when backend cretes",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " Want to visit profile section",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProfileCustomColorButton(
                    buttonBgColor: Color(0x24FF0000),
                    title: "Profile",
                    tittleColor: Color(0xFFFF0000),
                    onPress: () {
                      context.router.pushNamed(RoutesName.profile);
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
