import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{

  String title = "Fav1";

  FloatingActionButtonGreen(this.title);

  @override
  State<StatefulWidget> createState(){
    return _FloatingActionButtonGreen(this.title);
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  
  String title = "Fav1";
  bool isFavorite = false;
  IconData buttonIcon = Icons.favorite_border;

  _FloatingActionButtonGreen(this.title);

  void onPressedFav(){

    if (isFavorite == false){
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Agregaste a tus Favoritos"),
          ));

      setState(() {
        isFavorite = true;
        buttonIcon = Icons.favorite;
      });
    } else {
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Eliminaste de tus Favoritos"),
          ));
      
      setState(() {
        isFavorite = false;
        buttonIcon = Icons.favorite_border;
      });
    }
    
  }
  
  @override
  Widget build(BuildContext context){

    return FloatingActionButton(
      heroTag: this.title,
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        buttonIcon,
        color: Colors.white,
      )
    );
  }
}