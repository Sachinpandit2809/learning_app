import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/routes/routes_name.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.contextHeight,
        width: context.contextWidth,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade200, Colors.yellow.shade200])),
        child: SafeArea(
          child: Column(
            children: [
              // 20.heightBox,
              (context.contextHeight * 0.02).heightBox,

              Text("SAMOHVAL",
                  style: KTextStyle.K_20.copyWith(
                      color: MyColor.yellow,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5)),
              Text("education",
                  style: KTextStyle.K_12.copyWith(
                      // color: Colors.amber,
                      //    fontWeight: FontWeight.normal,

                      letterSpacing: 4.5)),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    (context.contextHeight * 0.23).heightBox,
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        "Welcome",
                        style: KTextStyle.K_34,
                      ),
                    ),
                    const Text(
                      "In the Lessons we learn  ",
                      style: KTextStyle.K_12,
                    ),
                    const Text(
                      "new words  ",
                      style: KTextStyle.K_12,
                    ),
                    40.heightBox,
                    InkWell(
                        onTap: () {
                          context.router.pushNamed(RoutesName.signup);
                        },
                        child: Container(
                            height: 44,
                            width: 182,
                            decoration: BoxDecoration(
                                color: MyColor.yellow,
                                borderRadius: BorderRadius.circular(22)),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: KTextStyle.K_15
                                    .copyWith(color: MyColor.white),
                              ),
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
