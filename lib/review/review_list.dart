import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/vinos.jpg", "Cosme Fulanito", "1 review 5 photos", "Vinazo!"),
        new Review("assets/img/vinos.jpg", "Papa Lobo", "1 review 5 photos", "Wow!!"),
        new Review("assets/img/vinos.jpg", "El Barto", "1 review 5 photos", "Ni fu ni fa...")
      ],
    );
  }
}