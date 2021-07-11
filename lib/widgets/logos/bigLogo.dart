import 'package:flutter/material.dart';


class BigLogo extends StatelessWidget {
  const BigLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        child: Image.asset("assets/colorLogo.png"),
      ),
    );
  }
}