import 'package:flutter/material.dart';
import 'description_text.dart';
import '../shared/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String title = "03/10 - Bonarda";

  DescriptionPlace(this.title);

  @override
  Widget build(BuildContext context) {
    
    final star = Container (
      margin: EdgeInsets.only(
        // top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      )
    );

    final titleStars = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            // top: 320.0,
            left: 20.0,
            right: 20.0            
          ),
          child: Text(
            this.title,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato"
            ),
            textAlign: TextAlign.left
          )
        ),

        // Row(
        //   children: <Widget>[
        //     star,
        //     star,
        //     star,
        //     star,
        //     star
        //   ],
        //   )

      ],
    );
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        DescriptionText("Resumen de la cata..."),
        ButtonPurple("Vinos[5]")
      ],
    );
  }
}
