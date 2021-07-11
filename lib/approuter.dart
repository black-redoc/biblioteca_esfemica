import 'package:biblioteca_esfemica/pages/AuthWidget.dart';
import 'package:flutter/material.dart' show WidgetBuilder;


class AppRouter {
  static final Map<String, WidgetBuilder> _router = {
      "/auth": (context) => AuthWidget()
  };

  static Map<String, WidgetBuilder> get router  => _router;
}