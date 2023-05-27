import 'package:flutter/cupertino.dart';

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
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              label!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        CupertinoTextField(
          autofillHints: autofillHints,
          obscureText: obscureText,
          placeholder: placeholder,
        ),
      ],
    );
  }
}
