import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? suffix;
  RoundedSearchField({
    Key? key,
    this.controller,
    this.suffix
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 40,
            top: 20,
            bottom: 20
          ),
          suffixIcon: this.suffix,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: FaIcon(
              FontAwesomeIcons.search,
              color: Colors.white,
            ),
          ),
          labelText: "Buscar...",
          labelStyle: TextStyle(
            color: Colors.white
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2
            )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2
            )
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never,
        ),
      ),
    );
  }
}