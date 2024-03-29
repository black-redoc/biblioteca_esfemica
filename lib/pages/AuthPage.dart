import 'dart:io' show Platform;

import 'package:biblioteca_esfemica/widgets/buttons/linkButton.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedBlackButton.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedOutlineRedButton.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedRedButton.dart';
import 'package:biblioteca_esfemica/widgets/formfields/roundedField.dart';
import 'package:biblioteca_esfemica/widgets/logos/bigLogo.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {

  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Icon visibility = Icon(Icons.visibility_off_rounded);
  Widget? suffix;
  bool hiddenPassword = false;
  
  @override
  Widget build(BuildContext context) {
    _initVisibilityPasswordIcon();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BigLogo(),
              SizedBox(height: 14),
              Column(
                children: <Widget>[
                  RoundedField(
                    controller: userController,
                    labelText: "correo"
                  ),
                  RoundedField(
                    controller: passwordController,
                    labelText: "contraseña",
                    obscureText: !hiddenPassword,
                    suffix: suffix,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LinkButton(
                          text: 'registrate',
                          onPressed: _navigateSignUp,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  RoundedRedButton(
                    child: SmallText(
                      text: 'Iniciar sesión',
                      color: Colors.white
                    ),
                    onPressed: _signIn,
                  ),
                  RoundedOutLineRedButton(
                    child: Icon(
                      Icons.facebook,
                      size: 50,
                    ),
                    onPressed: _facebookSignIn
                  ),
                  RoundedOutLineRedButton(
                    child: Image.asset("assets/googleIcon.png"),
                    onPressed: _googleSignIn
                  ),
                  _appleIDLogin()
                ]
              )
            ]
          ),
        ),
      )
    );
  }

  Widget _appleIDLogin() => Platform.isIOS
    ? RoundedBlackButton(
      child: Container(
        width: 50,
        child: Image.asset("assets/appleID.png")
      ),
      onPressed: _appleIDSignIn
    )
    : Container();

  void _initVisibilityPasswordIcon() {
    suffix = IconButton(
      icon: visibility, 
      onPressed: () {
        setState(() {
          if (hiddenPassword) {
            visibility = Icon(Icons.visibility_off_rounded);
            hiddenPassword = !hiddenPassword;
          } else {
            visibility = Icon(Icons.visibility_rounded);
            hiddenPassword = !hiddenPassword;
          }
        });
      }
    );
  }

  void _appleIDSignIn() {

  }

  void _googleSignIn() {

  }

  void _facebookSignIn() {

  }

  void _signIn() {
    Navigator.of(context).pushNamed("/");
  }

  void _navigateSignUp() {
    Navigator.of(context).pushNamed("/signUp");
  }
}