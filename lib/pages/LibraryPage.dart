import 'package:biblioteca_esfemica/data/bookDataSource.dart';
import 'package:biblioteca_esfemica/domain/Book.dart';
import 'package:biblioteca_esfemica/pages/BookPage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:biblioteca_esfemica/widgets/formfields/roundedSearchField.dart';
import 'package:biblioteca_esfemica/widgets/texts/mediumText.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:biblioteca_esfemica/widgets/titlebar/purpleSearchBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LibraryPage extends StatefulWidget {
  LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  /*
   * this is the value which the radio buttons update the state of the
   * selected option:
   * 1: Year/Anio
   * 2: Author/Autor@
   * 3: Genre/Genero
   */
  int _groupValue = 0;
  TextEditingController? _searchController;
  BookDataSource? _bookDataSource;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _bookDataSource = BookDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PurpleSearchBar(
            searchField: RoundedSearchField(
              controller: this._searchController,
              suffix: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.questionCircle,
                  color: Colors.white,
                ),
                onPressed: _launchAlert,
              ),
            ),
            row: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    value: 1,
                    groupValue: _groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    },
                  ),
                  SmallText(text: "Año", color: Colors.white),
                  Radio(
                    value: 2,
                    groupValue: _groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    },
                  ),
                  SmallText(text: "Autor/a", color: Colors.white),
                  Radio(
                    value: 3,
                    groupValue: _groupValue,
                    onChanged: (int? value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    },
                  ),
                  SmallText(text: "Género", color: Colors.white),
                ],
              ),
            ),
          ),
          Expanded(
            child: _buildBookListView(),
          ),
        ],
      ),
    );
  }

  void _launchAlert() {
    setState(() {
      _groupValue = 0;
      FocusScope.of(context).unfocus();
    });

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            title: Center(
              child: SmallText(
                text: "Sugerencia",
              ),
            ),
            content: _alertBody(),
          );
        });
  }

  Widget _alertBody() {
    return Container(
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Puedes buscar tus libros por nombre del libro sin necesidad de "
            "seleccionar alguna de las opciones de Año, Autor/a o Género."
            "\nY puedes deseleccionar las opciones abriendo esta sugerencia.",
            textAlign: TextAlign.justify,
          ),
          MaterialButton(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.transparent)),
              color: Colors.purple,
              onPressed: () => Navigator.of(context).pop(),
              child: SmallText(text: "Aceptar", color: Colors.white))
        ],
      ),
    );
  }

  void _redirectToBookDetailsPage(Book book) {
    final String bookReleaseDate = "${book.releaseDate?.day}/${book.releaseDate?.month}/${book.releaseDate?.year}";
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => BookPage(
          bookAuthor: book.author,
          bookImageUrl: book.image,
          bookDateRelease: bookReleaseDate,
        )
      )
    );
  }

  ListView _buildBookListView() {
    final books = _bookDataSource?.getBookCarousel();
    return ListView.builder(
    shrinkWrap: true,
      itemCount: books?.length,
      itemBuilder: (BuildContext context, int index) {
        final bookItem = books?[index];
        final images = bookItem?.books
            ?.map((e) => GestureDetector(
              onTap: () => _redirectToBookDetailsPage(e),
              child: Image.network(
                "${e.image}",
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      value: loadingProgress.expectedTotalBytes != null ?
                      (loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1))
                      : null,
                    )
                  );
                },
              ),
            ))
            .toList();

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    MediumText(text: "${bookItem?.genre}"),
                    SizedBox(width: 20),
                    FaIcon(FontAwesomeIcons.chevronRight, size: 18)
                  ],
                ),
              ),
              CarouselSlider(
                items: images,
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.4,
                  initialPage: 1,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeOutQuad,
                  scrollDirection: Axis.horizontal,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale
                )
              )
            ],
          ),
        );
      }
    );
  }
}
