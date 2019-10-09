import 'package:flutter/material.dart';

class HeaderSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Search',
      style: TextStyle(
        fontFamily: 'Lato',
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          // UserInfo('assets/img/vinos.jpg', 'Jason Statham','jason@mail.com'),
          // ButtonsBar()
        ],
      ),
    );
  }

}