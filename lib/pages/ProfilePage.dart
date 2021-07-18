import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: IconButton(
        icon: FaIcon(FontAwesomeIcons.bars),
        onPressed: () {},
      ),
      body: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Container(
          child: Stack(
            children: <Widget>[
              ..._header(),
              _body()
            ]
          ),
        ),
      ),
    );
  }

  Widget _body() {
    return Positioned(
      top: 440,
      right: 40,
      left: 40,
      bottom: 0,
      child: Container(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 33,
          itemBuilder: (_,i) => Text("Test $i")
        )
      )
    );
  }

  List<Widget> _header() {
    return [
      Positioned(child: Container(color: Color(0xFFEC2A44), height: 340)),
      Positioned(
        left: 50,
        right: 50,
        top: 60,
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/director.jpg"),
          radius: 100,
        )
      ),
      Positioned(
        top: 280,
        left: 50,
        right: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(40)
          ),
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SmallText(
                text: "Camila Gomez",
                fontWeight: FontWeight.w500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.book, size: 30),
                      SmallText(text: "150"),
                      SmallText(
                        text: "prestados",
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FaIcon(FontAwesomeIcons.book,
                        size: 30, color: Colors.pink),
                      SmallText(text: "148"),
                      SmallText(
                        text: "devueltos",
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ),
      Positioned(
        top: 60,
        left: 10,
        child: Image.asset(
          "assets/whiteLogo.png",
          width: 40,
        )
      )
    ];
  }
}
