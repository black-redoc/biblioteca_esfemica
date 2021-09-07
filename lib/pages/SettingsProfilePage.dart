import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/redTitleBar.dart';
import 'package:flutter/material.dart';

class SettingsProfilePage extends StatefulWidget {
  SettingsProfilePage({Key? key}) : super(key: key);

  @override
  _SettingsProfilePageState createState() => _SettingsProfilePageState();
}

class _SettingsProfilePageState extends State<SettingsProfilePage> {
  bool _activeNotifications = false;

  void onChangeNotifications(bool value) {
    setState(() => _activeNotifications = value);
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        color:Color(0xFFEC2A44),
        child: Column(
          children: <Widget>[
            RedTitleBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  SmallText(text: "Ajustes", color: Colors.white)
                ]
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 80, left: 30, right: 30),
              height: size.height - 125,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SmallText(
                        text: "Recibir Notificaciones",
                        fontWeight: FontWeight.w500,
                      ),
                      Switch(
                        onChanged: onChangeNotifications,
                        value: _activeNotifications,
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  SmallText(
                    text: "Cerrar sesión",
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 40),
                  SmallText(
                    text: "Eliminar mi cuenta",
                    fontWeight: FontWeight.w500,
                  ),
                ]
              )
            )
          ]
        ),
      )
    );
  }
}