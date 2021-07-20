import 'package:biblioteca_esfemica/widgets/texts/smallText.dart';
import 'package:flutter/material.dart';

class BookStatus extends StatelessWidget {
  final String? status;
  const BookStatus({
    Key? key,
    @required this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.symmetric(vertical: 2.0),
    decoration: BoxDecoration(
      color: _getBackgroundColor(this.status!),
      borderRadius: BorderRadius.circular(20)
    ),
    width: 120,
    child: Center(
      child: SmallText(
        text: this.status ?? "Prestado",
        color: _getTextColor(this.status!)
      ),
    )
  );

  Color _getTextColor(String status) {
    if (status.contains("Devuelto")) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }

  Color _getBackgroundColor(String status) {
    if (status.contains("Prestado")) {
      return Colors.black;
    } else if (status.contains("Reservado")) {
      return Colors.purple;
    } else if (status.contains("Devuelto")) {
      return Colors.greenAccent;
    } else {
      return Colors.black;
    }
  }
}