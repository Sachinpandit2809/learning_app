import 'package:flutter/material.dart';
import 'package:learning_app/extension/context_extension.dart';
import 'package:learning_app/styles/text_style.dart';

class ProfileCustomColorButton extends StatelessWidget {
  final String title;
  final Color tittleColor;
  final Color buttonBgColor;
  final VoidCallback onPress;

  const ProfileCustomColorButton(
      {super.key,
      required this.buttonBgColor,
      required this.title,
      required this.tittleColor,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 58,
        width: context.contextWidth * 0.75,
        decoration: BoxDecoration(
            color: buttonBgColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          title,
          style: KTextStyle.K_18.copyWith(letterSpacing: 1, color: tittleColor),
        )),
      ),
    );
  }
}
