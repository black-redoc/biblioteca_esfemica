import 'package:biblioteca_esfemica/pages/AuthPage.dart';
import 'package:biblioteca_esfemica/pages/HomePage.dart';
import 'package:biblioteca_esfemica/pages/SignUpPage.dart';
import 'package:flutter/material.dart' show WidgetBuilder;

class AppRouter {
  static final Map<String, WidgetBuilder> _router = {
    "/auth": (context) => AuthPage(),
    "/signUp": (context) => SignUpPage(),
    "/": (context) => HomePage()
  };

  static Map<String, WidgetBuilder> get router => _router;
}
