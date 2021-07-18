import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String? text;
  final Color? color;
  final FontWeight? fontWeight;
  const SmallText({
    Key? key,
    @required this.text,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w400
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text!,
        style: TextStyle(
          color: this.color,
          fontSize: 20,
          fontWeight: this.fontWeight
        )
      ),
    );
  }
}