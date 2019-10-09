import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {

  String text = "Resumen de la cata de Bonarda...";

  DescriptionText(this.text);

  @override
  Widget build(BuildContext context) {
    
    final text = Container(
      margin: EdgeInsets.only(
        right: 20.0,
        left: 20.0
      ),
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Lato"     
        ),
        textAlign: TextAlign.left,
      ),
    );

    return text;
  }
}