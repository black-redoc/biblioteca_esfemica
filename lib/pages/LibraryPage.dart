import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: MediumText(text: "Library Page")),
    );
  }
}