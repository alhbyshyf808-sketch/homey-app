import 'package:fadlapp/core/constant/routes.dart';
import 'package:fadlapp/view/screen/OnBoarding.dart';
import 'package:fadlapp/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.onboarding: (context) => const OnBoarding(),
};
