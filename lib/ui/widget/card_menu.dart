import 'package:flutter/material.dart';

class CardMenu extends StatefulWidget {
  String TextCard;
  IconData IconCard;

  CardMenu({required this.TextCard, required this.IconCard});

  @override
  _CardMenuState createState() => _CardMenuState();
}

class _CardMenuState extends State<CardMenu> {
  int colorBlack = 0xFF000000;
  int colorDorado = 0xFFECE518;
  int colorBlanco = 0xFF8D8381;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.only(top: 2, bottom: 2, left: 20, right: 2),
        width: (screenWidth / 5) - 4,
        color: Color(colorBlack),
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              widget.IconCard,
              color: Color(colorBlanco),
            ),
            Padding(padding: EdgeInsets.all(4)),
            Container(
              width: (screenWidth / 5) - 70,
              color: Color(colorBlack),
              child: Text(
                widget.TextCard,
                style: TextStyle(color: Color(colorBlanco), fontSize: 11),
              ),
            )
          ],
        ),
      ),
    );
  }
}




/*, */