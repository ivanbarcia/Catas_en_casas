import 'package:flutter/material.dart';
import 'header/header_profile.dart';
import 'wines/wines_list.dart';

class Profile extends StatelessWidget {

  final background = Container(
    color: Colors.green,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        background,
        ListView(
          children: <Widget>[
            HeaderProfile(),
            WinesList()
          ],
        ),
      ],
    );
  }

}