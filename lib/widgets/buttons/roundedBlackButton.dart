import 'package:flutter/material.dart';

class RoundedBlackButton extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  const RoundedBlackButton({
    Key? key,
    @required this.child,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 60),
        child: ElevatedButton(
          child: child,
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.black
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              )
            )
          ),
        ),
      ),
    );
  }
}