import 'package:flutter/material.dart';



class Settings extends StatelessWidget{
  @override
  //Drawer drawer = new Drawer();
  Widget build(BuildContext context){
    return new Scaffold( //drawer: drawer,
      appBar: new AppBar (title: new Text("Settings"), backgroundColor: Colors.blue,
        //actions: <Widget>[//new IconButton(icon: new Icon(Icons.face),tooltip: 'Profile',onPressed: (){Navigator.of(context).pushNamed("/Profile");},),
        //new IconButton(icon: new Icon(Icons.search),tooltip: 'Search',onPressed: (){Navigator.of(context).pushNamed("/Search");},),
        //new IconButton(icon: new Icon(Icons.cloud),tooltip: "Feed",onPressed: (){Navigator.of(context).pushNamed("/Feed");}),
        //new IconButton(icon: new Icon(Icons.close), tooltip:"Signout", onPressed: (){Navigator.of(context).pushNamed("/Signout");},)], ),
    ));
  }
}