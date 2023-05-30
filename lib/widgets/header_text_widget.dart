import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  final String text;

  const HeaderTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
