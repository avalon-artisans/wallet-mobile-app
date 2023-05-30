import 'package:flutter/material.dart';
import 'package:wallet_mobile_app/constants/dimensions.dart';

class TextButtonWidget extends StatelessWidget {
  final double radiusSize;
  final String text;
  final VoidCallback? onPressed;

  const TextButtonWidget({
    required this.text,
    super.key,
    this.onPressed,
    this.radiusSize = Dimensions.buttonRadiusSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.blue,
        minimumSize: const Size.fromHeight(
          Dimensions.buttonMinimumSize,
        ),
        // side: const BorderSide(color: Colors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radiusSize,
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
