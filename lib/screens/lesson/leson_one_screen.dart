import "package:auto_route/annotations.dart";
import "package:flutter/material.dart";

@RoutePage()
class LesonOneScreen extends StatefulWidget {
  const LesonOneScreen({super.key});

  @override
  State<LesonOneScreen> createState() => _LesonOneScreenState();
}

class _LesonOneScreenState extends State<LesonOneScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}