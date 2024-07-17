import 'package:flutter/material.dart';

class KTextformfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String lebelText;
  KTextformfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.lebelText});

  @override
  State<KTextformfield> createState() => _KTextformfieldState();
}

class _KTextformfieldState extends State<KTextformfield> {
  bool obsecure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 30),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            labelText: widget.lebelText,
            hintText: widget.hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
