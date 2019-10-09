import 'package:flutter/material.dart';
import '../description/description_place.dart';
import '../review/review_list.dart';
import '../header_appbar/header_appbar.dart';

class Home extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                HeaderAppBar("Catas en Casas"),
                DescriptionPlace("03/10 - Bonarda"),
                DescriptionPlace("26/09 - Semillon"),
                DescriptionPlace("19/09 - Petit Verdot"),
                ReviewList(),
              ],
            ),            
          ],
        );
  }
}