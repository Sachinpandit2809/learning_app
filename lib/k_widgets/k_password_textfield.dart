import 'package:flutter/material.dart';

class KPasswordTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String lebelText;

  KPasswordTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.lebelText,
  });

  @override
  State<KPasswordTextfield> createState() => _KPasswordTextfieldState();
}

class _KPasswordTextfieldState extends State<KPasswordTextfield> {
  bool obsecure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 30),
        child: TextFormField(
          controller: widget.controller,
          obscureText: obsecure, // use the obsecure variable to hide/show text
          decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  obsecure = !obsecure;
                  debugPrint(obsecure.toString());
                });
              },
              child: Icon(
                obsecure ? Icons.visibility : Icons.visibility_off,
                color: Colors.black, // Set icon color
              ),
            ),
            labelText: widget.lebelText,
            labelStyle: TextStyle(color: Colors.black), // Set label text color
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.black54), // Set hint text color
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black), // Set border color
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Colors.black), // Set enabled border color
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Colors.black), // Set focused border color
            ),
          ),
          style: TextStyle(color: Colors.black), // Set typed text color
          cursorColor: Colors.black, // Set cursor color
        ));
  }
}
