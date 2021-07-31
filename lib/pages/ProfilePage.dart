import 'package:biblioteca_esfemica/data/bookDataSource.dart';
import 'package:biblioteca_esfemica/usecases/conversor.dart';
import 'package:biblioteca_esfemica/widgets/bookList/bookListItem.dart';
import 'package:biblioteca_esfemica/widgets/buttons/circularButton.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
  with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _degOneTranslationAnimation;
  Animation<double>? _degTwoTranslationAnimation;
  Animation<double>? _rotationAnimation;
  Widget? _menuIcon;
  BookDataSource? _bookDataSource;

  @override
  void initState() {
    _bookDataSource = BookDataSource();
    _menuIcon = FaIcon(FontAwesomeIcons.bars);
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350)
    );
    // _degOneTranslationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);
    _degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(_animationController!);

    _degTwoTranslationAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(_animationController!);

    _rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(
      CurvedAnimation(parent: _animationController!, curve: Curves.easeOut)
    );
    super.initState();
    _animationController!.addListener(() {
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: _floatingActionButtons(),
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

  Widget _floatingActionButtons() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          right: 0,
          child: Container(
            height: 200,
            width: 80,
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                _editProfileButton(),
                _settigsProfileButton(),

                Positioned(
                  top:10,
                  right: 0,
                  child: Transform(
                    transform: Matrix4.rotationZ(_rotationAnimation!.value.toRadians()),
                    alignment: Alignment.center,
                    child: CircularButton(
                      icon: _menuIcon,
                      onPressed: _menuOnPressed,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
              ]
            ),
          )
        )
      ]
    );
  }

  void _onEditButtonPressed() {
    Navigator.of(context).pushNamed("/editProfile");
  }

  void _onSettingsButtonPressed() {

  }

  Widget _settigsProfileButton() {
    return Positioned(
      top: 10,
      right: 5,
      child: Transform.translate(
        offset:Offset.fromDirection(
          87.0.toRadians(), _degTwoTranslationAnimation!.value * 150
        ),
        child: Transform(
          transform: Matrix4
          .rotationZ(_rotationAnimation!.value.toRadians())
          ..scale(_degTwoTranslationAnimation!.value),
          alignment: Alignment.center,
          child: CircularButton(
            icon: FaIcon(FontAwesomeIcons.cog, color: Colors.white),
            onPressed: _onSettingsButtonPressed,
            color: Color(0xFF1e272e),
            size: 50
          ),
        ),
      ),
    );
  }

  Widget _editProfileButton() { 
    return Positioned(
      top: 10,
      right: 5,
      child: Transform.translate(
        offset: Offset.fromDirection(
          85.0.toRadians(), _degOneTranslationAnimation!.value * 80
        ),
        child: Transform(
          transform: Matrix4
          .rotationZ(_rotationAnimation!.value.toRadians())
          ..scale(_degOneTranslationAnimation!.value),
          alignment: Alignment.center,
          child: CircularButton(
            icon: FaIcon(FontAwesomeIcons.edit, color: Colors.white),
            onPressed: _onEditButtonPressed,
            color: Color(0xFF1e272e),
            size: 50
          ),
        ),
      ),
    );
  }
  void _menuOnPressed() {
    setState(() {
      if (_animationController!.isCompleted) {
        _animationController!.reverse();
        _menuIcon = FaIcon(FontAwesomeIcons.bars);
      } else {
        _animationController!.forward();
        _menuIcon = FaIcon(FontAwesomeIcons.times);
      }
    });
  }

  Widget _body() {
    final bookProfileStatusList = _bookDataSource!.getBookProfileStatus(0);

    return Positioned(
      top: 440,
      right: 20,
      left: 20,
      bottom: 0,
      child: Container(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: bookProfileStatusList.length,
          itemBuilder: (_,i) {
            final item = bookProfileStatusList[i];
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: BookListItem(
                imagePath: item.image,
                author: item.author,
                title: item.title,
                status: item.status
              )
            );
          }
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
