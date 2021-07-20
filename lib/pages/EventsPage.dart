import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleTitleBar.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PurpleTitleBar(
      title: "Programación",
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 100,
              itemBuilder:(context, index) {
                return Text("Hola pepito $index");
              }
            ),
          ),
        ],
      ),
    );
  }
}