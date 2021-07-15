import 'package:biblioteca_esfemica/widgets/formfields/roundedSearchField.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleSearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  int _groupValue = 0;
  TextEditingController? _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: PurpleSearchBar(
         searchField: RoundedSearchField(
           controller: this._searchController,
           suffix: IconButton(
             icon: FaIcon(
                FontAwesomeIcons.questionCircle,
                color: Colors.white,
              ),
              onPressed: _launchAlert,
           ),
         ),
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

  void _launchAlert() {
    setState(() {
      _groupValue = 0;
      FocusScope.of(context).unfocus();
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          title: Center(
            child: SmallText(
              text: "Sugerencia",
            ),
          ),
          content: _alertBody(),
        );
      }
    );
  }

  Widget _alertBody() {
    return Container(
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Puedes buscar tus libros por nombre del libro sin necesidad de "
            "seleccionar alguna de las opciones de Año, Autor/a o Género."
            "\nY puedes deseleccionar las opciones abriendo esta sugerencia.",
            textAlign: TextAlign.justify,
          ),
          MaterialButton(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.transparent
              )
            ),
            color: Colors.purple,
            onPressed: () => Navigator.of(context).pop(),
            child: SmallText(text: "Aceptar", color: Colors.white)
          )
        ],
      ),
    );
  }
}