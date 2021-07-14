import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleSearchBar.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  /*
   * this is the value which the radio buttons update the state of the
   * selected option:
   * 1: Year/Anio
   * 2: Author/Autor@
   * 3: Genre/Genero
   */
  int _groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: PurpleSearchBar(
         row: Padding(
           padding: const EdgeInsets.only(top: 8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Radio(
                 value: 1,
                 groupValue: _groupValue,
                 onChanged: (int? value) {
                   setState(() {
                     _groupValue = value!;
                   });
                 },
               ),
               SmallText(
                 text: "Año",
                 color: Colors.white
               ),


               Radio(
                 value: 2,
                 groupValue: _groupValue,
                 onChanged: (int? value) {
                   setState(() {
                     _groupValue = value!;
                   });
                 },
               ),
               SmallText(
                 text: "Autor/a",
                 color: Colors.white
               ),

               Radio(
                 value: 3,
                 groupValue: _groupValue,
                 onChanged: (int? value) {
                   setState(() {
                     _groupValue = value!;
                   });
                 },
               ),
               SmallText(
                 text: "Género",
                 color: Colors.white
               ),
             ],
           ),
         ),
       ),
    );
  }
}