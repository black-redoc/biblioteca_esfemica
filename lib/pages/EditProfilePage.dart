import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/redArcHeader.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RedArchHeader(
            title: "Lidia Soles"
          ),

          SizedBox(height: 40),
          MediumText(
            text: "Intereses",
          )
        ]
      ),
    );
  }
}

