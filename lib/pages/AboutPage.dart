import 'package:biblioteca_esfemica/widgets/texts/paragraph.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleTitleBar.dart';
import 'package:flutter/material.dart';



final String content = """ 
  La Escuela de Estudios Feministas de Cali ESFEMICA es una fundación orientada a la 
  formación teórica y política, el análisis crítico, la intervención social feminista y 
  los procesos de empoderamiento para niñas y mujeres en Colombia y el mundo.
  """.trim().replaceAll("\n", "");

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PurpeTitleBar(
        title: "Nosotras",
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Image.asset("assets/colorLogo.png", width: 200),
              SizedBox(height: 30,),
              Paragraph(content: content),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _linkIconButton(
                      icon: Icons.location_pin,
                      onPressed: () { }
                    ),
                    _linkIconButton(
                      icon: Icons.facebook_rounded, 
                      onPressed: (){ }
                    ),
                    _linkIconButton(
                      icon: Icons.facebook_rounded, 
                      onPressed: (){ }
                    ),
                    _linkIconButton(
                      icon: Icons.facebook_rounded, 
                      onPressed: (){ }
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: _linkIconButton(
                        icon: Icons.facebook_rounded, 
                        onPressed: (){ }
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }

  Widget _linkIconButton({
    IconData? icon,
    Function()? onPressed,
  }) {
    return IconButton(
      icon: Icon(
        icon!,
        size: 50,
        color: Color(0xFFEC2A44)
      ),
      onPressed: onPressed,
    );
  }
}