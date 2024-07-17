import 'package:flutter/material.dart';
import 'package:learning_app/styles/text_style.dart';

/// this is an Rectangular  elevated Widget which provide button
class RectangularButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressFunction;
  const RectangularButton(
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

// custom circular  Color Box 
class CustomCircularColorButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressFunction;
  final Color color;
  const CustomCircularColorButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 20),
      child: Container(
          height: 25,
          width: 65,
          decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              title,
              style: KTextStyle.K_8.copyWith(letterSpacing: 1.4, color: color),
            ),
          )),
    );
  }
}
