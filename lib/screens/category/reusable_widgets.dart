import 'package:flutter/material.dart';
import 'package:learning_app/styles/text_style.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressFunction;
  const MyElevatedButton(
      {super.key, required this.title, required this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white.withOpacity(0.65),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: onPressFunction,
          child: Text(
            "SCIENCE",
            style: KTextStyle.K_12.copyWith(letterSpacing: 1.4),
          )),
    );
  }
}