import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/k_widgets/profile_custom_color_buttom.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.drawerBlack,
      appBar: AppBar(
        backgroundColor: MyColor.drawerBlack,
        title: Column(
          children: [
            Text("SAMOHAL",
                style: KTextStyle.K_20.copyWith(color: Colors.white)),
            Text("education",
                style: KTextStyle.K_12.copyWith(
                  color: Colors.white,
                )),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        height: 700,
        width: double.infinity,
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/png/app_icon.png"),
            ),
            (context.contextHeight * 0.04).heightBox,
            Text("in this lesson we learn ",
                style: KTextStyle.K_12.copyWith(
                  color: Colors.white,
                )),
            Text("education",
                style: KTextStyle.K_12.copyWith(
                  color: Colors.white,
                )),
            (context.contextHeight * 0.08).heightBox,
            ProfileCustomColorButton(
                buttonBgColor: Color(0xEEFFFFFf),
                title: "Send Message",
                tittleColor: Color(0xFF000000),
                onPress: () {}),
            (context.contextHeight * 0.04).heightBox,
            ProfileCustomColorButton(
                buttonBgColor: Color(0x00F7B500),
                title: "Block",
                tittleColor: Color(0xFFE02020),
                onPress: () {})
          ],
        ),
      ),
    );
  }
}
