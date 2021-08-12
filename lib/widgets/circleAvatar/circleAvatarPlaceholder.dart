import 'package:flutter/material.dart';

class CircleAvatarPlaceHolder extends StatelessWidget {
  final String? placeholder;
  final String? image;
  final double? padding;
  const CircleAvatarPlaceHolder({
    Key? key,
    @required this.placeholder,
    @required this.image,
    @required this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: this.padding!),
      child: AspectRatio(
        aspectRatio: 1/1,
        child: ClipOval(
          child: FadeInImage.assetNetwork(
            placeholder: this.placeholder!,
            image: image!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}