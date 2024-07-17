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
            child: Icon(obsecure ? Icons.visibility : Icons.visibility_off),
          ),
          labelText: widget.lebelText,
          hintText: widget.hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
