import 'package:flutter/material.dart';
import '../shared/card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Container(
      height: 320.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
           new CardImage("assets/img/vinos.jpg"),
           new CardImage("assets/img/vino1.jpg"),
           new CardImage("assets/img/vino2.jpg"),
           new CardImage("assets/img/vino3.jpg"),
           new CardImage("assets/img/vino4.jpg"),
           new CardImage("assets/img/vino5.jpg"),
        ],
      )
    );
  }
}