import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/redArcHeader.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
            onPressed: () => _backPage(context),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10.0),
            child: Image.asset("assets/whiteLogo.png", width: 50),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
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

  void _backPage(BuildContext context) => Navigator.of(context).pop();
}


