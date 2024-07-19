import "package:auto_route/annotations.dart";
import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:learning_app/colors/my_color.dart";
import "package:learning_app/extension/num_extension.dart";
import "package:learning_app/routes/routes_name.dart";
import "package:learning_app/screens/category/mydrawer_screen.dart";
import "package:learning_app/screens/category/reusable_widgets.dart";
import "package:learning_app/styles/text_style.dart";

@RoutePage()
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MydrawerScreen(),
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
                  colors: [MyColor.yellow.withOpacity(0.2), Colors.white60],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: GradientRotation(1))),
          child: Column(
            children: [
              Container(
                height: 55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 13,
                    itemBuilder: (context, index) {
                      return RectangularButton(
                          title: "ENGLISH", onPressFunction: () {});
                    }),
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: 26,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          context.router.pushNamed(RoutesName.category1);
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Book - ${index + 1}",
                              style: KTextStyle.K_12.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/png/index_pic_1.png",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.amber),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
