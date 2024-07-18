import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app/colors/my_color.dart';
import 'package:learning_app/extension/num_extension.dart';
import 'package:learning_app/styles/text_style.dart';

class MydrawerScreen extends StatefulWidget {
  const MydrawerScreen({super.key});

  @override
  State<MydrawerScreen> createState() => _MydrawerScreenState();
}

class _MydrawerScreenState extends State<MydrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF1F1F1F),
      child: Column(
        children: [
          // UserAccountsDrawerHeader(
          //     accountName: Text("user account"),
          //     accountEmail: Text("accountEmail"))
          Container(
            height: 200,
            // color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/images/png/profile2.png"),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User name",
                      style: KTextStyle.K_20.copyWith(color: Colors.white),
                    ),
                    Text(
                      "student",
                      style: KTextStyle.K_12.copyWith(color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            // color: Colors.teal,
            child: Column(
              children: [
                DrawerDataRow(),
                DrawerDataRow(),
                DrawerDataRow(),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 0),
            // height: 140,//
            // color: Colors.cyan,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage("assets/images/png/profile3.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "username",
                      style: KTextStyle.K_15.copyWith(color: Colors.white),
                    ),
                    Text(
                      "student",
                      style: KTextStyle.K_12.copyWith(color: Colors.red),
                    ),
                    5.heightBox,
                    Text("this ia a text due data\ni am sachin from koderma ",
                        style: KTextStyle.K_10.copyWith(color: Colors.white))
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 35,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Color(0x44B620E0),
                borderRadius: BorderRadius.circular(12)),
            // height: 140,//
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(Icons.notification_important)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Push notification",
                      style: KTextStyle.K_12.copyWith(color: Colors.white),
                    ),
                    Text(
                      "this ia a text due data\ni am sachin from koderma ",
                      style: KTextStyle.K_8.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Enable",
                      style: KTextStyle.K_11.copyWith(color: Color(0xffB620E0)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Color(0x44F7B500),
                borderRadius: BorderRadius.circular(12)),
            // height: 140,//
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Icon(Icons.notification_important)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Updates",
                      style: KTextStyle.K_12.copyWith(color: Colors.white),
                    ),
                    Text(
                      "this ia a text due data\ni am sachin from koderma ",
                      style: KTextStyle.K_8.copyWith(color: Colors.white),
                    ),
                    Text(
                      "student",
                      style: KTextStyle.K_11.copyWith(color: Color(0xffF7B500)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            decoration: BoxDecoration(
                color: Color(0xff232323),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Text("SAMOHVAL",
                    style: KTextStyle.K_20.copyWith(
                        color: MyColor.yellow,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5)),
                Text("education",
                    style: KTextStyle.K_12.copyWith(
                        color: Colors.amber,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 4.5)),
              ],
            ),
          )

          //next
        ],
      ),
    );
  }
}

class DrawerDataRow extends StatelessWidget {
  const DrawerDataRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.night_shelter, size: 35, color: Colors.blue),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "ksjhdsclsdhhskd",
              style: KTextStyle.K_15.copyWith(color: MyColor.drawerFontColor),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
