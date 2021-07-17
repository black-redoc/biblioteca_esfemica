import 'dart:async';
import 'package:biblioteca_esfemica/bloc/page/pageEvent.dart';
import 'package:biblioteca_esfemica/bloc/page/pageState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PageBloc extends Bloc<PageEvent, PageState>{
  PageBloc() : super(PageState());

  @override
  Stream<PageState> mapEventToState(PageEvent event) async* {
    if (event is PageAbout) {
      yield PageState(pageNumber: 0);
    } else if (event is PageLibrary) {
        yield PageState(pageNumber: 1);
    }
  }
}