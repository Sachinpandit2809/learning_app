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
  TextEditingController lastNameController = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    labelText: "first name",
                    labelStyle:
                        TextStyle(color: Colors.white), // Set label text color
                    hintText: "first name",
                    hintStyle:
                        TextStyle(color: Colors.white54), // Set hint text color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set border color when enabled
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set border color when focused
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: TextStyle(color: Colors.white), // Set typed text color
                  cursorColor: Colors.white, // Set cursor color
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    labelText: "last name",
                    labelStyle:
                        TextStyle(color: Colors.white), // Set label text color
                    hintText: "last name",
                    hintStyle:
                        TextStyle(color: Colors.white54), // Set hint text color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set border color when enabled
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white), // Set border color when focused
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: TextStyle(color: Colors.white), // Set typed text color
                  cursorColor: Colors.white, // Set cursor color
                ),
              ),
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
