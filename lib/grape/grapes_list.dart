import 'package:flutter/material.dart';
import 'package:cec_vinos/models/grape.dart';

class GrapesList extends StatelessWidget {

  InfoGrape info1 = new InfoGrape('Vino1', '89', '93', '95');
  InfoGrape info2 = new InfoGrape('Vino2', '100', '70', '80');
  InfoGrape info3 = new InfoGrape('Vino3', '95', '63', '42');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Grape Listing")), 
        body: Container( //GrapeListTile());
          margin: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            right: 20.0,
            bottom: 10.0
          ),
          child: Column(
            children: <Widget>[
              GrapeListTile('assets/img/vino1.jpg', info1),
              GrapeListTile('assets/img/vino2.jpg', info2),
              GrapeListTile('assets/img/vino3.jpg', info3),
            ],
          ),
        )
    ); 
  }
}

class GrapeListTile extends StatelessWidget {

  String image;
  InfoGrape infoGrape;

  GrapeListTile(this.image, this.infoGrape);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/PLAYER_DETAILS");
      },
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        height: 100.0,
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
                tag: "vino1",
                child: Image.asset(
                  image,
                  height: 80.0,
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      infoGrape.vino,
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.only(left: 8.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[Text("VISTA"), Text(infoGrape.vista)], // VISTA
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[Text("NARIZ"), Text(infoGrape.nariz)], // NARIZ
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[Text("BOCA"), Text(infoGrape.boca)], // BOCA
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}