import 'package:flutter/material.dart';

class CircleBookImage extends StatelessWidget {
  final String? imagePath;
  final String? placeholder;
  const CircleBookImage({
    Key? key,
    this.imagePath,
    this.placeholder
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 30*2,
      height: 30*2,
      child: ClipOval(
        child: FadeInImage.assetNetwork(
          placeholder: this.placeholder ?? "assets/loading-circle.gif", 
          image: this.imagePath!,
          fit: BoxFit.cover,
    ),
      ),
    );
  }
}
