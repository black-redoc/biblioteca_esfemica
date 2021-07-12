import 'package:flutter/material.dart';

class PurpeTitleBar extends StatelessWidget {
  final String? title;
  final Widget? body;
  const PurpeTitleBar({
    Key? key,
    @required this.title,
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
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                      onPressed: (){},
                    ),
                    Text(
                      this.title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23
                      )
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
              height: size.height,
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