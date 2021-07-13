import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/texts/paragraph.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



final String content = """ 
  La Escuela de Estudios Feministas de Cali ESFEMICA es una fundación orientada a la 
  formación teórica y política, el análisis crítico, la intervención social feminista y 
  los procesos de empoderamiento para niñas y mujeres en Colombia y el mundo.
  """.trim().replaceAll("\n", "");

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                  vertical: 20
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _linkIconButton(
                      icon: FontAwesomeIcons.mapMarkerAlt,
                      onPressed: _redirectGoogleMaps
                    ),
                    _linkIconButton(
                      icon: FontAwesomeIcons.facebook, 
                      onPressed: _redirectFacebook
                    ),
                    _linkIconButton(
                      icon: FontAwesomeIcons.twitter,
                      onPressed: _redirectTwitter
                    ),
                    _linkIconButton(
                      icon: FontAwesomeIcons.instagram, 
                      onPressed: _redirectInstagram
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: _linkIconButton(
                        icon: FontAwesomeIcons.whatsapp, 
                        onPressed: _redirectWhatsapp
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    MediumText(
                      text: "Nuestro Equipo"
                    ),
                    Container(
                      width: size.width / 5,
                      child: Divider(
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
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
      icon: FaIcon(
        icon!,
        size: 50,
        color: Color(0xFFEC2A44)
      ),
      onPressed: onPressed,
    );
  }

  void _redirectGoogleMaps() {

  }
  void _redirectFacebook() {
    
  }
  void _redirectTwitter() {
    
  }
  void _redirectInstagram() {
    
  }
  void _redirectWhatsapp() {
    
  }
}