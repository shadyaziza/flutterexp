import 'package:flutter/material.dart';


class Feedback extends StatelessWidget{
  @override
  //Drawer drawer = new Drawer();
  Widget build(BuildContext context){
    //return new Scaffold(//drawer: drawer,
        //appBar: new AppBar (title: new Text("Feedback"), backgroundColor: Colors.blue,
          //actions: <Widget>[
            //new IconButton(icon: new Icon(Icons.search),tooltip: 'Search',onPressed: (){Navigator.of(context).pushNamed("/Search");},),
            //new IconButton(icon: new Icon(Icons.settings),tooltip: 'Settings',onPressed: (){Navigator.of(context).pushNamed("/Settings");},),
            //new IconButton(icon: new Icon(Icons.cloud),tooltip: "Feed",onPressed: (){Navigator.of(context).pushNamed("/Feed");}),
            //new IconButton(icon: new Icon(Icons.close), tooltip:"Signout", onPressed: (){Navigator.of(context).pushNamed("/Signout");},)
    //
    //],));}
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Text('Feedback',
            style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
      ),
    );
}}