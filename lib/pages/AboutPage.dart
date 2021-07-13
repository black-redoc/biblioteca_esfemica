import 'package:biblioteca_esfemica/data/aboutDataSource.dart';
import 'package:biblioteca_esfemica/data/teamDataSource.dart';
import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/texts/paragraph.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleTitleBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  final TeamDataSource teamDataSource = TeamDataSource();
  final AboutDataSource aboutDataSource = AboutDataSource();
  AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: PurpeTitleBar(
        title: "Nosotras",
        body: Row(
          children: [
            Expanded(
              child: ListView(
                children: <Widget>[
                  Image.asset("assets/colorLogo.png", width: 200),
                  SizedBox(height: 30,),
                  Paragraph(content: aboutDataSource.aboutText),
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

                  Container(
                    child: _buildTeamListView()
                  ),
                  SizedBox(height: 100,)
                ],
              ),
            ),
          ],
        )
      )
    );
  }

  
  Widget _buildTeamListView() {
    final teamList = teamDataSource.getTeamList();
    final List<Widget> widgets = [];

    for (var itemTeam in teamList) {
      widgets.add(
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(itemTeam.imageUrl),
              radius: 120,
            ),
            MediumText(
              text: itemTeam.completeName,
            ),
            MediumText(
              text: itemTeam.workArea,
            ),
            SmallText(
              text: itemTeam.carrer,
              color: Colors.grey
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: Divider(
                color: Colors.blueGrey
              )
            )
          ]
        )
      );
    }

    return Column(
      children: <Widget>[
        ...widgets
      ]
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