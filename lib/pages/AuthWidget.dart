import 'package:biblioteca_esfemica/widgets/logos/bigLogo.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            BigLogo()
          ]
        ),
      )
    );
  }
}