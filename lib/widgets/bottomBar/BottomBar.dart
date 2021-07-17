import 'package:biblioteca_esfemica/bloc/page/pageBloc.dart';
import 'package:biblioteca_esfemica/bloc/page/pageEvent.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBarPage extends StatelessWidget {
  final int? currentIndex;
  final void Function(int)? onTap;
  const BottomBarPage({Key? key, this.onTap, this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
        selectedItemColor: Color(0xFFEC2A44),
        currentIndex: currentIndex ?? 0,
        onTap: this.onTap!,
        items: <SalomonBottomBarItem>[
          SalomonBottomBarItem(
              icon: FaIcon(FontAwesomeIcons.userTag),
              title: SmallText(text: "Nosotras")),
          SalomonBottomBarItem(
              icon: FaIcon(FontAwesomeIcons.book),
              title: SmallText(text: "Biblioteca")),
          SalomonBottomBarItem(
              icon: FaIcon(FontAwesomeIcons.userAlt),
              title: SmallText(text: "Perfil")),
          SalomonBottomBarItem(
              icon: FaIcon(FontAwesomeIcons.calendarAlt),
              title: SmallText(text: "Programación")),
        ]);
  }
}
