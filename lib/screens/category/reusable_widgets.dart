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

// this container used in course list 3 title on title color

class CourseListContainer extends StatelessWidget {
  final String title1, title2, title3;
  final Color titleColor;
  const CourseListContainer(
      {super.key,
      required this.titleColor,
      required this.title1,
      required this.title2,
      required this.title3});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 80,
              width: 80,
              child: Image.asset("assets/images/png/cap.png")),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title1,
                  style: KTextStyle.K_12.copyWith(color: titleColor),
                ),
                Text(
                  title2,
                  style: KTextStyle.K_15,
                ),
                Text(title3, style: KTextStyle.K_12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseBottomContainerTitleButton extends StatelessWidget {
  final String buttonTitle, title;
  final Color bgColor;
  const CourseBottomContainerTitleButton(
      {super.key, required this.title,required this.bgColor, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
          height: 65,
          color: bgColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(title),
              RectangularButton(title: buttonTitle, onPressFunction: () {})
            ],
          )),
    );
  }
}
