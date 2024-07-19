import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/k_widgets/profile_custom_color_buttom.dart';
import 'package:learning_app/screens/category/mydrawer_screen.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class EditProfileTwoScreen extends StatefulWidget {
  const EditProfileTwoScreen({super.key});

  @override
  State<EditProfileTwoScreen> createState() => _EditProfileTwoScreenState();
}

class _EditProfileTwoScreenState extends State<EditProfileTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MydrawerScreen(),
      backgroundColor: MyColor.drawerBlack,
      appBar: AppBar(
        backgroundColor: MyColor.drawerBlack,
        title: Column(
          children: [
            Text("SAMOHAL",
                style: KTextStyle.K_20.copyWith(color: Colors.white)),
            Text("education",
                style: KTextStyle.K_15.copyWith(
                  color: Colors.white,
                )),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/png/app_icon.png"),
              ),
              (context.contextHeight * 0.04).heightBox,
              Text("in this lesson we learn ",
                  style: KTextStyle.K_15.copyWith(
                    color: Colors.white,
                  )),
              Text("education",
                  style: KTextStyle.K_18.copyWith(
                    color: Color(0xFFF7B500),
                  )),
              Container(
                margin: EdgeInsets.all(20),
                height: 120,
                decoration: BoxDecoration(
                    color: Color(0xFF6D7278),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login",
                            style:
                                KTextStyle.K_15.copyWith(color: Colors.white),
                          ),
                          Text(
                            "@username",
                            style:
                                KTextStyle.K_15.copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Username",
                            style:
                                KTextStyle.K_15.copyWith(color: Colors.white),
                          ),
                          Text(
                            "@username",
                            style:
                                KTextStyle.K_15.copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 120,
                decoration: BoxDecoration(
                    color: Color(0xFF6D7278),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dark Mode",
                            style:
                                KTextStyle.K_15.copyWith(color: Colors.white),
                          ),
                          Switch(value: true, onChanged: (v) {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Push Notification",
                            style:
                                KTextStyle.K_15.copyWith(color: Colors.white),
                          ),
                          Switch(value: true, onChanged: (v) {}),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
