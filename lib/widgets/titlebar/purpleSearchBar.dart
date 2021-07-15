import 'package:flutter/material.dart';

class PurpleSearchBar extends StatelessWidget {
  final Widget? row;
  final Widget? searchField;
  PurpleSearchBar({
    Key? key,
    this.row,
    this.searchField
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final borderSize = 50.0;
    return Container(
      height: 250,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderSize),
          bottomRight: Radius.circular(borderSize)
        )
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
              Stack(
                children: [
                  this.searchField!,
                  Positioned(
                    right: 10,
                    top: 25,
                    child: Image.asset("assets/whiteLogo.png", height: 30)
                  ),
                ]
              ),
              SizedBox(
                height: 3,
              ),
              this.row!
          ]
        ),
      )
    );
  }
}