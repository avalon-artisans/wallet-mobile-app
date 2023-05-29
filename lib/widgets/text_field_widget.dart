import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final Iterable<String>? autofillHints;
  final String? label;
  final String? placeholder;

  const TextFieldWidget({
    super.key,
    this.autofillHints,
    this.label,
    this.obscureText = false,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          autofillHints: autofillHints,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
          ),
        ),
      ],
    );
  }
}
