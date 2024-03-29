import 'package:flutter/material.dart';

class RoundedRedButton extends StatelessWidget {
  final Widget? child;
  final Function()? onPressed;
  const RoundedRedButton({
    Key? key,
    @required this.child,
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 40),
        child: ElevatedButton(
          child: child,
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFFEC2A44),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: Colors.red)
              )
            )
          ),
        ),
      ),
    );
  }
}