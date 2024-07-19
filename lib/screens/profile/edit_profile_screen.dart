import "package:auto_route/annotations.dart";
import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:learning_app/colors/my_color.dart";
import "package:learning_app/extension/context_extension.dart";
import "package:learning_app/extension/num_extension.dart";
import "package:learning_app/k_widgets/k_textformfield.dart";
import "package:learning_app/k_widgets/profile_custom_color_buttom.dart";
import "package:learning_app/routes/routes_name.dart";
import "package:learning_app/screens/category/mydrawer_screen.dart";
import "package:learning_app/styles/text_style.dart";

@RoutePage()
class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController LastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.drawerBlack,
      endDrawer: MydrawerScreen(),
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
              (context.contextHeight * 0.04).heightBox,
              KTextformfield(
                  controller: firstNameController,
                  hintText: "Firstname",
                  lebelText: "first name"),
              KTextformfield(
                  controller: firstNameController,
                  hintText: "Lastname",
                  lebelText: "last name"),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ProfileCustomColorButton(
                    buttonBgColor: Color(0x246DD400),
                    title: "submit",
                    tittleColor: Color(0xFF6DD400),
                    onPress: () {
                      context.router.pushNamed(RoutesName.editProfile1);
                    }),
              ),
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
