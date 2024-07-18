import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/k_widgets/profile_custom_color_buttom.dart';
// import 'package:learning_app/k_widgets/profile_custom_color_buttom.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class EditProfileOneScreen extends StatefulWidget {
  const EditProfileOneScreen({super.key});

  @override
  State<EditProfileOneScreen> createState() => _EditProfileOneScreenState();
}

class _EditProfileOneScreenState extends State<EditProfileOneScreen> {
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
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/png/profile3.png"),
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
              (context.contextHeight * 0.4).heightBox,
              ProfileCustomColorButton(
                  buttonBgColor: Color(0x00),
                  title: "Block",
                  tittleColor: Color(0xFFE02020),
                  onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
