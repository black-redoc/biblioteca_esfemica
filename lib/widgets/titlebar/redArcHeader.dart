import 'package:biblioteca_esfemica/widgets/circleAvatar/circleAvatarPlaceholder.dart';
import 'package:biblioteca_esfemica/widgets/clippers/arcClipper.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            top: 60,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                SmallText(
                  text: this.title ?? "Tatiana Sofia Salazar",
                  color: Colors.white
                ),
                Image.asset("assets/whiteLogo.png", width: 50),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: CircleAvatarPlaceHolder(
              image: 
                this.imageUrl ?? "https://images.pexels.com/photos/712521/"
                "pexels-photo-712521.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
              placeholder: "assets/loading-circle.gif",
              padding: 90,
            ),
          )
        ],
      ),
    );
  }
}