import "package:auto_route/annotations.dart";
import "package:flutter/material.dart";

@RoutePage()
class CategoryOneScreen extends StatefulWidget {
  const CategoryOneScreen({super.key});

  @override
  State<CategoryOneScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CategoryOneScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
