import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';

class PurpleTitleBar extends StatelessWidget {
  final String? title;
  final Widget? body;
  final Widget? leftButton;
  const PurpleTitleBar({
    Key? key,
    @required this.title,
    this.leftButton,
    this.body
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: 160,
              color: Color(0xFF902584),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    this.leftButton ?? Container(width: 50),
                    SmallText(
                      text: this.title!,
                      color: Colors.white,
                    ),
                    Image.asset("assets/whiteLogo.png", width: 40)
                  ]
                ),
              )
            ),
          ),
          Positioned(
            top:110,
            child: Container(
              width: size.width,
              height: size.height * 0.8,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),
              child: this.body,
            )
          )
        ]
      );
  }
}