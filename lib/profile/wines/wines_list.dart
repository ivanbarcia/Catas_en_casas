import 'package:flutter/material.dart';
import 'wine.dart';
import '../../models/wine.dart';

class WinesList extends StatelessWidget {

  InfoWine info = new InfoWine('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  InfoWine info2 = new InfoWine('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');
  InfoWine info3 = new InfoWine('Porsche Merry', 'Porsche 1', 'Car', '321,321,321');
  InfoWine info4 = new InfoWine('Porsche Night', 'Porsche 2', 'Car Luxury', '321,321,321');
  InfoWine info5 = new InfoWine('Porsche Bridge', 'Porsche 3', 'FastCar', '321,321,321');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          Wine('assets/img/vinos.jpg', info),
          Wine('assets/img/vino1.jpg', info),
          Wine('assets/img/vino2.jpg', info2),
          Wine('assets/img/vino3.jpg', info3),
          Wine('assets/img/vino4.jpg', info4),
          Wine('assets/img/vino5.jpg', info5),
        ],
      ),
    );
  }

}