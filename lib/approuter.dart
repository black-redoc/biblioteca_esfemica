import 'package:biblioteca_esfemica/pages/AuthPage.dart';
import 'package:biblioteca_esfemica/pages/EditProfilePage.dart';
import 'package:biblioteca_esfemica/pages/HomePage.dart';
import 'package:biblioteca_esfemica/pages/SettingsProfilePage.dart';
import 'package:biblioteca_esfemica/pages/SignUpPage.dart';
import 'package:flutter/material.dart' show WidgetBuilder;

class AppRouter {
  static final Map<String, WidgetBuilder> _router = {
    "/auth": (context) => AuthPage(),
    "/signUp": (context) => SignUpPage(),
    "/": (context) => HomePage(),
    "/editProfile": (context) => EditProfilePage(),
    "/settingsProfile": (context) => SettingsProfilePage()
  };

  static Map<String, WidgetBuilder> get router => _router;
}
