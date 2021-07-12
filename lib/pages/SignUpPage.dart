import 'package:biblioteca_esfemica/widgets/buttons/linkButton.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedRedButton.dart';
import 'package:biblioteca_esfemica/widgets/formfields/roundedField.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/redTitleBar.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  Widget? passwordSuffix;
  Widget? confirmSuffix;
  Icon passwordVisibility = Icon(Icons.visibility_off_rounded);
  Icon confirmVisibility = Icon(Icons.visibility_off_rounded);
  bool passwordHidden = true;
  bool confirmHidden = true;

  @override
  Widget build(BuildContext context) {
    _initializePasswordSuffix();

    return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RedTitleBar(
              title: Text(
                "Registro",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23
                )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RoundedField(
                  controller: emailController, 
                  labelText: "correo"
                ),
                RoundedField(
                  controller: passwordController, 
                  labelText: "contraseña",
                  obscureText: passwordHidden,
                  suffix: passwordSuffix,
                ),
                RoundedField(
                  controller: confirmPasswordController, 
                  labelText: "confirmar contraseña",
                  obscureText: confirmHidden,
                  suffix: confirmSuffix,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: LinkButton(
                        text: "iniciar sesión", 
                        onPressed: _navigateToSignIn
                      ),
                    ),
                  ],
                )
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: RoundedRedButton(
              child: Text(
                "Registrarme",
                style: TextStyle(
                  fontSize: 20
                )
              ),
              onPressed: _signUp,
            ),
          ),
         ],
       )
    );
  }

  void _initializePasswordSuffix() {
    passwordSuffix = IconButton(
      icon: passwordVisibility,
      onPressed: () {
        setState(() {
          if (passwordHidden) {
            passwordVisibility = Icon(Icons.visibility_rounded);
            passwordHidden = !passwordHidden;
          } else {
            passwordVisibility = Icon(Icons.visibility_off_rounded);
            passwordHidden = !passwordHidden;
          }
        });
      },
    );

    confirmSuffix = IconButton(
      icon: confirmVisibility,
      onPressed: () {
        setState(() {
          if (confirmHidden) {
            confirmVisibility = Icon(Icons.visibility_rounded);
            confirmHidden = !confirmHidden;
          } else {
            confirmVisibility = Icon(Icons.visibility_off_rounded);
            confirmHidden = !confirmHidden;
          }
        });
      }
    );
  }

  void _navigateToSignIn() {

  }

  void _signUp() {

  }
}