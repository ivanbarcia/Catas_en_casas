import 'package:flutter/material.dart';
import 'header/header_search.dart';
import 'data/data_list.dart';

class Search extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        HeaderSearch(),
        DataList()
      ],
    );    
  }
}