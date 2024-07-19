import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/k_widgets/profile_custom_color_buttom.dart';
import 'package:learning_app/routes/routes_name.dart';
import 'package:learning_app/screens/category/mydrawer_screen.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                buttonBgColor: Color(0x24F7B500),
                title: "Edit profile",
                tittleColor: Color(0xFFF7B500),
                onPress: () {
                  context.router.pushNamed(RoutesName.editProfile);
                }),
            (context.contextHeight * 0.04).heightBox,
            ProfileCustomColorButton(
                buttonBgColor: Color(0x24F7B500),
                title: "Send Message",
                tittleColor: Color(0xFFF7B500),
                onPress: () {
                  context.router.pushNamed(RoutesName.category5);
                }),
            (context.contextHeight * 0.04).heightBox,
            ProfileCustomColorButton(
                buttonBgColor: Color(0x00F7B500),
                title: "Block",
                tittleColor: Color(0xFFE02020),
                onPress: () {
                  context.router.pushNamed(RoutesName.userProfile);
                })
          ],
        ),
      ),
    );
  }
}
