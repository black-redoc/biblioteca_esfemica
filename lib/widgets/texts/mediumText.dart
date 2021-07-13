import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String? text;
  final Color? color;
  const MediumText({
    Key? key,
    @required this.text,
    this.color = Colors.black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.text!,
        style: TextStyle(
          color: this.color,
          fontSize: 25
        )
      ),
    );
  }
}