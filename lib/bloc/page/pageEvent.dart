abstract class PageEvent {}
class PageLibrary extends PageEvent {
  final int pageNumber;
  PageLibrary(this.pageNumber);
}
class PageAbout extends PageEvent {
  final int pageNumber;
  PageAbout(this.pageNumber);
}
