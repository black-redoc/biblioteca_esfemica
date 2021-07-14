import 'package:biblioteca_esfemica/widgets/formfields/roundedSearchField.dart';
import 'package:flutter/material.dart';

class PurpleSearchBar extends StatelessWidget {
  final Widget? row;
  PurpleSearchBar({
    Key? key,
    this.row
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
                  RoundedSearchField(),
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