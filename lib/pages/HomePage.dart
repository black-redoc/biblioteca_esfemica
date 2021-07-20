import 'package:biblioteca_esfemica/bloc/page/pageBloc.dart';
import 'package:biblioteca_esfemica/bloc/page/pageEvent.dart';
import 'package:biblioteca_esfemica/pages/AboutPage.dart';
import 'package:biblioteca_esfemica/pages/EventsPage.dart';
import 'package:biblioteca_esfemica/pages/LibraryPage.dart';
import 'package:biblioteca_esfemica/pages/ProfilePage.dart';
import 'package:biblioteca_esfemica/widgets/bottomBar/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget bodyPage = AboutPage();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<PageBloc>(context);
    return Scaffold(
      body: bodyPage,
      bottomNavigationBar: BottomBarPage(
        currentIndex: bloc.state.pageNumber,
        onTap: (int index) {
          setState(() {
            _buildPage(index, bloc);
          });
        }
      ),
    );
  }

  void _buildPage(int index, PageBloc bloc) {
    switch (index) {
      case 0:
        bodyPage = AboutPage();
        bloc.add(PageAbout(0));
        break;
      case 1:
        bodyPage = LibraryPage();
        bloc.add(PageLibrary(1));
        break;
      case 2:
        bodyPage = ProfilePage();
        bloc.add(PageProfile(2));
        break;
      case 3:
        bodyPage = EventsPage();
        bloc.add(PageEvents(3));
        break;
      default:
        bodyPage = AboutPage();
        bloc.add(PageAbout(0));
    }
  }
}