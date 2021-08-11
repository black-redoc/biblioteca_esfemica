import 'package:biblioteca_esfemica/widgets/buttons/roundedRedButton.dart';
import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/redArcHeader.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List<String>? interestList;
  List<String>? dropdownList;
  String? currentValue; //  ="Drama";

  @override
  void initState() {
    super.initState();
    interestList = [
      "Drama",
      "Feminismo",
      "Sociología",
      "Ciencias Sociales",
      "Drama",
      "Feminismo",
      "Sociología",
      "Ciencias Sociales",
      "Drama",
      "Feminismo",
      "Sociología",
      "Ciencias Sociales"
    ];

    dropdownList = [
      "Drama",
      "Feminismo",
      "Sociología",
      "Ciencias Sociales",
    ];

    currentValue = "Drama";
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: IconButton(
        icon: FaIcon(
          FontAwesomeIcons.plusCircle,
          color: Colors.red,
          size: 50,
        ),
        onPressed: _addInterest,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(children: <Widget>[
        RedArchHeader(title: "Lidia Soles"),
        SizedBox(height: 40),
        MediumText(
          text: "Intereses",
        ),
        SizedBox(height: 14),
        Expanded(
          child: _interestsList(size),
        )
      ]),
    );
  }

  void _deleteInterest(int id) {
    setState(() {
      interestList?.removeAt(id);
      Navigator.of(context).pop();
    });
  }

  void _addInterest() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: SmallText(text: "Agregar"),
          ),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return DropdownButton(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: FaIcon(FontAwesomeIcons.caretDown)
                ),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                value: currentValue,
                onChanged: (String? newValue) {
                  setState(() {
                    currentValue = newValue;
                  });
                },
                items: dropdownList!.map<DropdownMenuItem<String>>((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: SmallText(text: valueItem)
                  );
                }).toList(),
              );
            },
          ),
          actions: <Widget>[
            RoundedRedButton(
              child: SmallText(text: "Guardar", color: Colors.white),
              onPressed: _saveInterest
            )
          ],
        );
      }
    );
  }

  void _saveInterest() {}

  Future<bool> _confirmDismiss(int id) async {
    final response = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(width: 20),
              SmallText(text: "Confirmación"),
              IconButton(
                onPressed: () => _backPage(context),
                icon: FaIcon(FontAwesomeIcons.times, size: 20)
              )
            ],
          ),
          content: SmallText(text: "Desea eliminar este item?"),
          actions: <Widget>[
            RoundedRedButton(
              child: SmallText(text: "Eliminar", color: Colors.white),
              onPressed: () => _deleteInterest(id)
            ),
          ],
        );
      }
    );
    return response;
  }

  void _backPage(BuildContext context) => Navigator.of(context).pop();

  Widget _interestsList(Size size) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: interestList?.length,
      itemBuilder: (BuildContext context, int idx) {
        return Container(
          width: size.width,
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.grey, width: 0.5),
            bottom: (idx == (interestList!.length - 1))
                ? BorderSide(color: Colors.grey, width: 0.5)
                : BorderSide.none,
          )),
          child: Dismissible(
            key: Key("${interestList?[idx]}"),
            confirmDismiss: (DismissDirection direction) =>
                _confirmDismiss(idx),
            child: ListTile(
              title: Center(
                child:
                    SmallText(text: "${interestList?[idx]}", color: Colors.red),
              ),
            ),
            background: _slideRightBackground(),
            secondaryBackground: _slideLeftBackground(),
          ),
        );
      },
    );
  }

  Widget _slideRightBackground() => Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          FaIcon(
            FontAwesomeIcons.trash,
            color: Colors.white,
          ),
          Text(
            " Eliminar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      alignment: Alignment.centerLeft,
    ),
  );

  Widget _slideLeftBackground() => Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            " Eliminar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
          FaIcon(
            FontAwesomeIcons.trash,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      alignment: Alignment.centerRight,
    ),
  );
}
