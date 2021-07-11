import 'package:flutter/material.dart';

class RoundedOutLineRedButton extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  const RoundedOutLineRedButton({
    Key? key,
    @required this.child,
    @required this.onPressed
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
              Colors.white,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              Color(0xFFEC2A44),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: Colors.red, width: 2)
              )
            )
          ),
        ),
      ),
    );
  }
}