import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/k_widgets/k_password_textfield.dart';
import 'package:learning_app/k_widgets/k_textformfield.dart';
import 'package:learning_app/routes/routes_name.dart';
import 'package:learning_app/styles/text_style.dart';

@RoutePage()
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // bool _obsecure = false;
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
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
          child: SingleChildScrollView(
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
                      (context.contextHeight * 0.12).heightBox,
                      Text(
                        "Create Account",
                        style: KTextStyle.K_34,
                      ),
                      const Text(
                        "In the Lessons we learn new words and rules  ",
                        style: KTextStyle.K_12,
                      ),
                      const Text(
                        "for Voclaburities Continues and aericle  ",
                        style: KTextStyle.K_12,
                      ),
                      KTextformfield(
                          controller: emailController,
                          hintText: "email",
                          lebelText: "email"),
                      KPasswordTextfield(
                          controller: passwordController,
                          hintText: "password",
                          lebelText: "password"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                            checkColor: MyColor.white,
                            activeColor: MyColor.yellow,
                          ),
                          Text(
                            "Term of Using this application",
                            style: KTextStyle.K_11,
                          )
                        ],
                      ),
                      (context.contextHeight * 0.015).heightBox,
                      InkWell(
                          onTap: () {
                            context.router.pushNamed(RoutesName.index);
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
                              ))),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "allready have account ",
                              style: KTextStyle.K_11,
                            ),
                            InkWell(
                              onTap: () {
                                context.router.pushNamed(RoutesName.login);
                              },
                              child: Text(
                                "LogIn",
                                style: KTextStyle.K_12
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
