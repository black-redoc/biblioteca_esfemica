import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String? text;
  final Function()? onPressed;
  const LinkButton({
    Key? key,
    @required this.text,
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text(
          text!,
          style: TextStyle(
            color: Color(0xFF2A84EC),
            fontSize: 20
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}