import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:wallet_mobile_app/widgets/elevated_button_widget.dart';
import 'package:wallet_mobile_app/widgets/header_text_widget.dart';
import 'package:wallet_mobile_app/widgets/sub_header_text_widget.dart';
import 'package:wallet_mobile_app/widgets/text_button_widget.dart';
import 'package:wallet_mobile_app/widgets/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    child: HeaderTextWidget(
                      text: tr('register'),
                    ),
                  ),
                  SubHeaderTextWidget(
                    text: tr('enter_your_details_to_register'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFieldWidget(
                autofillHints: const [AutofillHints.name],
                label: tr('your_name'),
                placeholder: tr('your_name'),
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
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFieldWidget(
                autofillHints: const [AutofillHints.password],
                label: tr('retype_your_password'),
                obscureText: true,
                placeholder: tr('retype_your_password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButtonWidget(
                      radiusSize: 10,
                      text: '← ${tr('back').toUpperCase()}',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButtonWidget(
                      radiusSize: 10,
                      text: tr('register').toUpperCase(),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
