import 'package:biblioteca_esfemica/widgets/clippers/arcClipper.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';

class RedArchHeader extends StatelessWidget {
  final String? title;
  final String? imageUrl;
  const RedArchHeader({
    Key? key,
    this.title,
    this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 370,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ArcClipper(),
            child: Container(
              color: Color(0xFFEC2A44),
              height: 300,
              width: size.width,
            ),
          ),

          Positioned(
            top: 80,
            right: 0,
            left: 0,
            child: Center(
              child: SmallText(
                text: this.title ?? "Tatiana Sofia Salazar",
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                this.imageUrl ?? "https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
            ),),
          )
        ],
      ),
    );
  }
}