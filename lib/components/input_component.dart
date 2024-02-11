import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyInput extends StatefulWidget {

  final TextEditingController controller;
  final String label;

  MyInput({
    super.key, 
    required this.controller,
    required this.label,
  });

  @override
  State<MyInput> createState() => _MyInput();
}

class _MyInput extends State<MyInput> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        hintText: widget.label,
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}

