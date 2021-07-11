import 'package:flutter/material.dart';

class RoundedField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final Widget? suffix;
  final bool obscureText;
  const RoundedField({
    Key? key,
    @required this.controller,
    @required this.labelText,
    this.suffix,
    this.obscureText = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: TextFormField(
        controller: this.controller,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: 22
        ),
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffix,
          contentPadding: EdgeInsets.only(
            left: 40, 
            top: 20,
            bottom: 20
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))
          )
        ),
      ),
    );
  }
}