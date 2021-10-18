import 'package:biblioteca_esfemica/widgets/bookList/bookStatus.dart';
import 'package:biblioteca_esfemica/widgets/buttons/roundedRedButton.dart';
import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/texts/paragraph.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class BookPage extends StatefulWidget {
  String? bookImageUrl;
  String? bookAuthor;
  String? sinopsis;
  String? bookDateRelease;
  BookPage({
    Key? key,
    this.bookImageUrl,
    this.bookAuthor,
    this.sinopsis,
    this.bookDateRelease
  }) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  bool isReserved = false;
  String reserveString = "Reservar";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xFFEC2A44),
        child: Column(
          children: <Widget>[
            _header(size.height, size.width),
            _body(size.height, size.width)
          ]
        )
      )
    );
  }

  Widget _header(double height, double width) {
    return Container(
      height: height * 0.45,
      padding: EdgeInsets.only(top: 55),
      width: width,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.white
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }
              ),
              Container(
                width: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Switch(
                      value: isReserved,
                      onChanged: (value) {
                        setState(() {
                          isReserved = value;
                          reserveString = isReserved ? "Reservado": "Reservar";
                        } );
                      }
                    ),
                    SmallText(
                      text: reserveString,
                      color: Colors.white
                    )
                  ],
                ),
              )
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeInImage.assetNetwork(
                image: widget.bookImageUrl ?? "https://m.media-amazon.com/images/I/510+j0PdQjL.jpg",
                placeholder: "assets/loading-circle.gif",
                height: height * 0.26
              )
            ]
          )
        ]
      )
    );
  }

  Widget _body(double height, double width) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15
      ),
      height: height * 0.55,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BookStatus(status: "Reservado")
            ]
          ),
          MediumText(
            text: widget.bookAuthor ?? "Geroge Orwell"
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SmallText(
                text: "Sinopsis",
                fontWeight: FontWeight.w500,
              ),
              SmallText(
                text: widget.bookDateRelease ?? "17/08/1945",
                color: Colors.grey
              )
            ],
          ),
          Paragraph(
            content: widget.sinopsis ?? "Los animales de la granja de los Jones se sublevan contra sus dueños humanos y los vencen. Pero la rebelión fracasará al surgir entre ellos rivalidades y envidias..."
          ),
          RoundedRedButton(
            child: SmallText(
              text: "Prestar",
              color: Colors.white
            ),
            onPressed: () { }
          )
        ]
      )
    );
  }
}
