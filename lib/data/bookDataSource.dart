import 'package:biblioteca_esfemica/domain/Book.dart';
import 'package:biblioteca_esfemica/domain/BookCarousel.dart';
import 'package:biblioteca_esfemica/domain/BookProfileStatus.dart';
import 'package:biblioteca_esfemica/domain/PersonalReference.dart';
import 'package:biblioteca_esfemica/domain/Profile.dart';

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
            author: "Max Weber",
            title: "La etica protestante y el espiritul del capitalismo",
            image: "https://introduccionalahistoriajvg.files.wordpress.com/2012/08/la-etica-protestante-y-el-espiritu-del-capitalismo_mlv-f-2598510231_042012.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Max Weber",
            title: "Ecnomia y Sociedad",
            image: "https://images-na.ssl-images-amazon.com/images/I/916308506YL.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Karl Marx & Frederich Engels",
            title: "Manifiesto Comunista",
            image: "https://images-na.ssl-images-amazon.com/images/I/81aDxpFVw8L.jpg",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Karkl Marx",
            title: "El capital",
            image: "https://imagessl0.casadellibro.com/a/l/t7/50/9788445907450.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Pierre Bourdieu",
            title: "La dominacion masculina",
            image: "https://www.anagrama-ed.es/uploads/media/portadas/0001/13/a66ccc249f119e9a18c2f4e8e0bde8f3db65d41b.jpeg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Paulo Freire",
            title: "Educacion Liberadora",
            image: "https://images-na.ssl-images-amazon.com/images/I/71YLoy0pb2L.jpg",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Max Weber",
            title: "La etica protestante y el espiritul del capitalismo",
            image: "https://introduccionalahistoriajvg.files.wordpress.com/2012/08/la-etica-protestante-y-el-espiritu-del-capitalismo_mlv-f-2598510231_042012.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Max Weber",
            title: "Ecnomia y Sociedad",
            image: "https://images-na.ssl-images-amazon.com/images/I/916308506YL.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Karl Marx & Frederich Engels",
            title: "Manifiesto Comunista",
            image: "https://images-na.ssl-images-amazon.com/images/I/81aDxpFVw8L.jpg",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Karkl Marx",
            title: "El capital",
            image: "https://imagessl0.casadellibro.com/a/l/t7/50/9788445907450.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Pierre Bourdieu",
            title: "La dominacion masculina",
            image: "https://www.anagrama-ed.es/uploads/media/portadas/0001/13/a66ccc249f119e9a18c2f4e8e0bde8f3db65d41b.jpeg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Paulo Freire",
            title: "Educacion Liberadora",
            image: "https://images-na.ssl-images-amazon.com/images/I/71YLoy0pb2L.jpg",
            releaseDate: DateTime.parse("20140101")
          )
        ]
      ),
      BookCarousel(
        genre: "Pedagogia",
        books: <Book>[
          Book(
            author: "Max Weber",
            title: "La etica protestante y el espiritul del capitalismo",
            image: "https://introduccionalahistoriajvg.files.wordpress.com/2012/08/la-etica-protestante-y-el-espiritu-del-capitalismo_mlv-f-2598510231_042012.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Max Weber",
            title: "Ecnomia y Sociedad",
            image: "https://images-na.ssl-images-amazon.com/images/I/916308506YL.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Karl Marx & Frederich Engels",
            title: "Manifiesto Comunista",
            image: "https://images-na.ssl-images-amazon.com/images/I/81aDxpFVw8L.jpg",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Karkl Marx",
            title: "El capital",
            image: "https://imagessl0.casadellibro.com/a/l/t7/50/9788445907450.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Pierre Bourdieu",
            title: "La dominacion masculina",
            image: "https://www.anagrama-ed.es/uploads/media/portadas/0001/13/a66ccc249f119e9a18c2f4e8e0bde8f3db65d41b.jpeg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Paulo Freire",
            title: "Educacion Liberadora",
            image: "https://images-na.ssl-images-amazon.com/images/I/71YLoy0pb2L.jpg",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Max Weber",
            title: "La etica protestante y el espiritul del capitalismo",
            image: "https://introduccionalahistoriajvg.files.wordpress.com/2012/08/la-etica-protestante-y-el-espiritu-del-capitalismo_mlv-f-2598510231_042012.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Max Weber",
            title: "Ecnomia y Sociedad",
            image: "https://images-na.ssl-images-amazon.com/images/I/916308506YL.jpg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Karl Marx & Frederich Engels",
            title: "Manifiesto Comunista",
            image: "https://images-na.ssl-images-amazon.com/images/I/81aDxpFVw8L.jpg",
            releaseDate: DateTime.parse("20140101")
          ),
          Book(
            author: "Karkl Marx",
            title: "El capital",
            image: "https://imagessl0.casadellibro.com/a/l/t7/50/9788445907450.jpg",
            releaseDate: DateTime.parse("19490101")
          ),
          Book(
            author: "Pierre Bourdieu",
            title: "La dominacion masculina",
            image: "https://www.anagrama-ed.es/uploads/media/portadas/0001/13/a66ccc249f119e9a18c2f4e8e0bde8f3db65d41b.jpeg",
            releaseDate: DateTime.parse("19290101")
          ),
          Book(
            author: "Paulo Freire",
            title: "Educacion Liberadora",
            image: "https://images-na.ssl-images-amazon.com/images/I/71YLoy0pb2L.jpg",
            releaseDate: DateTime.parse("20140101")
          )
        ]
      )
    ];
  }

  List<BookProfileStatus> getBookProfileStatus(int id) {
    return [
      BookProfileStatus(
        status: "Reservado",
        title: "El color púrpura",
        author: "Alice Walker",
        image: "https://quelibroleo.com/images/libros/libro_1373929925.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Prestado",
        title: "El segundo sexo",
        author: "Simone de Bouvier",
        image: "https://images-na.ssl-images-amazon.com/images/I/81BFLGEQNQL.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Reservado",
        title: "Paula",
        author: "Isabel Allende",
        image: "https://www.penguinlibros.com/uy/132968/paula.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Devuelto",
        title: "Politica Sexual",
        author: "Kate Millett",
        image: "https://m.media-amazon.com/images/I/41McGKESFaL.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Prestado",
        title: "La teoría de king kong",
        author: "Virginie Despentes",
        image: "https://cdn-elle.ladmedia.fr/var/plain_site/storage/images/loisirs/livres/dossiers/livre-feministe/king-kong-theorie-de-virginie-despentes/76648655-1-fre-FR/King-Kong-Theorie-de-Virginie-Despentes.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Prestado",
        title: "Confesiones de una mala feminista",
        author: "Roxane Gay",
        image: "https://www.vassar.edu/stories/2018/assets/images/191205-roxane-gay-cover.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Devuelto",
        title: "Los monólogos de la vagina",
        author: "Eve Ensler",
        image: "https://cpb-us-e1.wpmucdn.com/sites.nova.edu/dist/1/19/files/2020/02/TVM-FLYER-1_resize.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Reservado",
        title: "Mujeres, raza y clase",
        author: "Angela Davis",
        image: "https://frauenkultur.co.uk/wp-content/uploads/2020/06/Women-Race-and-Class-copy.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Prestado",
        title: "El cuaderno dorado",
        author: "Doris Lessing",
        image: "https://images-na.ssl-images-amazon.com/images/I/51dgcR6rHuL._SX341_BO1,204,203,200_.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      ),
      BookProfileStatus(
        status: "Reservado",
        title: "Sexual Personae",
        author: "Camille Paglia",
        image: "https://images-na.ssl-images-amazon.com/images/I/91oXkHq5kxL.jpg",
        profile: Profile(
          id: 1100795633,
          career: "Estudiante",
          firstName: "Camila",
          lastName: "Gomez",
          phone: "3150004412",
          personalReference: PersonalReference(
            relationShip: "Tia",
            completeName: "Sarai Gomez",
            phone: "3002200211"
          )
        )
      )
    ];
  }
}