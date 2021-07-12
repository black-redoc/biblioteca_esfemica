import 'package:flutter/material.dart';

class RedTitleBar extends StatelessWidget {
  final Widget? title;
  const RedTitleBar({
    Key? key,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      padding: EdgeInsets.only(
        left: 30, right: 30, top: 50
      ),
      color:Color(0xFFEC2A44),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          title!,
          Image.asset("assets/whiteLogo.png", width: 50)
        ]
      ),
    );
  }
}