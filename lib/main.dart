import 'package:biblioteca_esfemica/approuter.dart';
import 'package:biblioteca_esfemica/bloc/page/pageBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 
void main() => runApp(AppState());


class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageBloc()
        )
      ], 
      child: MyApp()
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto'
      ),
      title: 'Esfemica Biblioteca',
      debugShowCheckedModeBanner: false,
      routes: AppRouter.router,
      initialRoute: "/",
    );
  }
}