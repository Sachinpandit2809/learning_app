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
            labelStyle: TextStyle(color: Colors.black), // Set label text color
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.black54), // Set hint text color
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black), // Set border color when enabled
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black), // Set border color when focused
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          style: TextStyle(color: Colors.black), // Set typed text color
          cursorColor: Colors.black, // Set cursor color
        ));
  }
}
