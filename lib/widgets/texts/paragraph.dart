import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final String? content;
  final  Color color;
  const Paragraph({
    Key? key,
    @required this.content,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width / 1.2,
      child: Text(
        this.content!,
        style: TextStyle(
          color: this.color,
          fontSize: 20,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}