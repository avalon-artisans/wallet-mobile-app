import 'package:flutter/material.dart';
import 'package:wallet_mobile_app/constants/dimensions.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const OutlinedButtonWidget({
    required this.text,
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.blue,
        minimumSize: const Size.fromHeight(
          Dimensions.buttonMinimumSize,
        ),
        side: const BorderSide(color: Colors.blue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Dimensions.buttonRadiusSize,
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
