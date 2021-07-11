import 'package:biblioteca_esfemica/widgets/buttons/linkButton.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedOutlineRedButton.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedRedButton.dart';
import 'package:biblioteca_esfemica/widgets/formfields/roundedField.dart';
import 'package:biblioteca_esfemica/widgets/logos/bigLogo.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {

  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
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
              SizedBox(height: 20),
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
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                      ),
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
                ]
              )
            ]
          ),
        ),
      )
    );
  }

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

  void _googleSignIn() {

  }

  void _facebookSignIn() {

  }

  void _signIn() {
    
  }

  void _navigateSignUp() {

  }
}