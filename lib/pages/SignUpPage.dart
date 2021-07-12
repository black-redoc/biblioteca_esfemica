import 'package:biblioteca_esfemica/widgets/titlebar/redTitleBar.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: <Widget>[
           RedTitleBar(
             title: Text(
               "Registro",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 23
               )
             ),
           )
         ],
       )
    );
  }
}