import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wallet_mobile_app/widgets/elevated_button_widget.dart';
import 'package:wallet_mobile_app/widgets/outlined_button_widget.dart';
import 'package:wallet_mobile_app/widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      tr('login'),
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    tr('login_with_your_credentials'),
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFieldWidget(
                autofillHints: const [AutofillHints.email],
                label: tr('your_email'),
                placeholder: tr('email_address'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFieldWidget(
                autofillHints: const [AutofillHints.password],
                label: tr('your_password'),
                obscureText: true,
                placeholder: tr('password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButtonWidget(
                text: tr('continue_upper_case'),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: OutlinedButtonWidget(
                text: tr('sign_up_upper_case'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
