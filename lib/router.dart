import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_mobile_app/screens/login/login_screen.dart';
import 'package:wallet_mobile_app/screens/register/register_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return const RegisterScreen();
          },
        ),
      ],
    ),
  ],
);
