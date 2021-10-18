import "package:flutter/material.dart";

class LibrarySearchPage extends StatefulWidget {
  const LibrarySearchPage({Key? key}) : super(key: key);

  @override
  _LibrarySearchPageState createState() => _LibrarySearchPageState();
}

class _LibrarySearchPageState extends State<LibrarySearchPage> {
    Widget build(BuildContext context) {
        return Scaffold(
                body: Center(
                    child: Text("LibrarySearchPage")
                )
        );
    }
}

