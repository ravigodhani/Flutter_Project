import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {
  const CustomWidgets({super.key, required this.imageaddress});

  final imageaddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF636363)),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(image: AssetImage(imageaddress)),
      ),
    );
  }
}