import 'package:flutter/material.dart';

class CircleBookImage extends StatelessWidget {
  final String? imagePath;
  const CircleBookImage({
    Key? key,
    this.imagePath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage("$imagePath"),
      radius: 30
    );
  }
}
