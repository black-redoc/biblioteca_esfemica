abstract class PageEvent {
  final int pageNumber;
  PageEvent(this.pageNumber);
}
class PageLibrary extends PageEvent {
  PageLibrary(int pageNumber) : super(pageNumber);
}
class PageAbout extends PageEvent {
  PageAbout(int pageNumber) : super(pageNumber);
}

class PageProfile extends PageEvent {
  PageProfile(int pageNumber) : super(pageNumber);
}

class PageEvents extends PageEvent {
  PageEvents(int pageNumber) : super(pageNumber);
}

