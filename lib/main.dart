import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_mobile_app/app.dart';
import 'package:wallet_mobile_app/constants/locales.dart';
import 'package:wallet_mobile_app/constants/paths.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // For now, only portrait device orientation is supported.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    EasyLocalization(
      fallbackLocale: Locales.english,
      path: Paths.translations,
      supportedLocales: Locales.supportedLocales,
      child: const App(),
    ),
  );
}
