import 'package:flutter/material.dart';

const lebelTextStyle = TextStyle(fontSize: 18.0, color: Color(0Xff8D8E98));

class IconContent extends StatelessWidget {
  final IconData icon;
  final String leabl;

  const IconContent({super.key, required this.icon, required this.leabl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          leabl,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
