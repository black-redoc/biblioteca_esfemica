import 'package:biblioteca_esfemica/usecases/stringLimiter.dart';
import 'package:biblioteca_esfemica/widgets/bookList/bookStatus.dart';
import 'package:biblioteca_esfemica/widgets/bookList/circleBookImage.dart';
import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget {
  final String? imagePath;
  final String? author;
  final String? title;
  final String? status;
  const BookListItem({
    Key? key,
    @required this.imagePath,
    @required this.author,
    @required this.title,
    @required this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context)  => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: [
          CircleBookImage(
            imagePath: this.imagePath,
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SmallText(
                text: "${title?.limitquarter()}",
                fontWeight: FontWeight.w500
              ),
              SmallText(
                text: "${author?.limitquarter()}",
                fontWeight: FontWeight.w500,
                color: Colors.grey
              )
            ]
          )
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BookStatus(status: "$status")
        ]
      )
    ]
  );
}
