import 'package:biblioteca_esfemica/domain/Book.dart';
import 'package:biblioteca_esfemica/domain/BookCarousel.dart';

class BookDataSource {
  List<BookCarousel> getBookCarousel() {
    return [
      BookCarousel(
        genre: "Feminismo",
        books: <Book>[
          Book(
            author: "Simone de Beauvoir",
            title: "El segundo sexo",
            image: "https://images-na.ssl-images-amazon.com/images/I/71zKFuinBhL.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Virginia Woolf",
            title: "Una habitación propia",
            image: "https://http2.mlstatic.com/D_NQ_NP_935021-MLA41761912432_052020-O.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Roxane Gay",
            title: "Confesiones de una mala feminista",
            image: "https://www.gonvill.com.mx/imagenes/9786070/978607073948.JPG",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Simone de Beauvoir",
            title: "El segundo sexo",
            image: "https://images-na.ssl-images-amazon.com/images/I/71zKFuinBhL.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Virginia Woolf",
            title: "Una habitación propia",
            image: "https://http2.mlstatic.com/D_NQ_NP_935021-MLA41761912432_052020-O.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Roxane Gay",
            title: "Confesiones de una mala feminista",
            image: "https://www.gonvill.com.mx/imagenes/9786070/978607073948.JPG",
            releaseDate: DateTime.parse("20140101")
          )
        ]
      ),
      BookCarousel(
        genre: "Sociologia",
        books: <Book>[
          Book(
            author: "Simone de Beauvoir",
            title: "El segundo sexo",
            image: "https://images-na.ssl-images-amazon.com/images/I/71zKFuinBhL.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Virginia Woolf",
            title: "Una habitación propia",
            image: "https://http2.mlstatic.com/D_NQ_NP_935021-MLA41761912432_052020-O.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Roxane Gay",
            title: "Confesiones de una mala feminista",
            image: "https://www.gonvill.com.mx/imagenes/9786070/978607073948.JPG",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Simone de Beauvoir",
            title: "El segundo sexo",
            image: "https://images-na.ssl-images-amazon.com/images/I/71zKFuinBhL.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Virginia Woolf",
            title: "Una habitación propia",
            image: "https://http2.mlstatic.com/D_NQ_NP_935021-MLA41761912432_052020-O.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Roxane Gay",
            title: "Confesiones de una mala feminista",
            image: "https://www.gonvill.com.mx/imagenes/9786070/978607073948.JPG",
            releaseDate: DateTime.parse("20140101")
          )
        ]
      )
    ];
  }
}