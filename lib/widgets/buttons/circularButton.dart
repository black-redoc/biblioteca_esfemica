import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Widget? icon;
  final void Function()? onPressed;
  final Color? color;
  final double? size;
  const CircularButton({
    Key? key,
    this.icon,
    this.onPressed,
    this.color,
    this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: this.onPressed,
        icon: this.icon!
      )
    );
  }
}