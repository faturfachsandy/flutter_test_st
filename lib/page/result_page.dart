import 'package:flutter/material.dart';

class MyResult extends StatelessWidget {

  final String text;
  
  const MyResult({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
