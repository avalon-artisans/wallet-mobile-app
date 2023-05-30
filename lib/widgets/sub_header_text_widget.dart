import 'package:flutter/material.dart';

class SubHeaderTextWidget extends StatelessWidget {
  final String text;

  const SubHeaderTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black54,
      ),
    );
  }
}
