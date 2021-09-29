import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/f1_logo.png",
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
