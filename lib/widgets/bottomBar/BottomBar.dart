import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SalomonBottomBar(
        selectedItemColor: Color(0xFFEC2A44),
        currentIndex: _currentIndex,
        onTap: _onChangeIndex,
        items: <SalomonBottomBarItem>[
          SalomonBottomBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userTag
            ), 
            title: SmallText(text: "Nosotras")
          ),
          SalomonBottomBarItem(
            icon: FaIcon(
              FontAwesomeIcons.book
            ), 
            title: SmallText(text: "Biblioteca")
          ),
          SalomonBottomBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userAlt
            ), 
            title: SmallText(text: "Perfil")
          ),
          SalomonBottomBarItem(
            icon: FaIcon(
              FontAwesomeIcons.calendarAlt
            ), 
            title: SmallText(text: "Programación")
          ),
        ]
      ),
    );
  }

  void _onChangeIndex(int index) {
    setState(() {
      _currentIndex = index;

      switch (_currentIndex) {
        case 0: Navigator.of(context).pushNamed("/about"); break;
        case 1: Navigator.of(context).pushNamed("/library"); break;
        // default: Navigator.of(context).pushNamed("/about");
      }
    });
  }
}