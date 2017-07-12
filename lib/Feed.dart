import 'package:flutter/material.dart';

class Feed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Drawer drawer = new Drawer();
      return new Container(
        /*decoration: new BoxDecoration(color: Colors.white),
        child: new Center(
          child: new Text('Feed',
              style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
        ),*/
        //decoration: new BoxDecoration(color: Colors.lightBlueAccent),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(child: new Image.asset('assets/googleicon.png', fit: BoxFit.fill),backgroundColor: Colors.white,),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('Company', style: Theme.of(context).textTheme.subhead),
                new Container(
                  decoration: new BoxDecoration(/*color: Colors.grey,*/ border: new Border.all(color: Colors.lightBlueAccent)) ,
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text('We ARE HIRING!\n Apply now for the CEO position at Google\n We are glad to announce that you \n got scammed so hard that even hard itself \n became less harder.'/*'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'*/,softWrap: true,),
                ),
              ],
            ),
          ],
        ),
      );
    }
    //return new Scaffold( //drawer: drawer,

        //appBar: new AppBar(title:new Text ('FEED')
          //actions: <Widget>[
            //new IconButton(icon: new Icon(Icons.face),tooltip: 'Profile',onPressed: (){Navigator.of(context).pushNamed("/Profile");},),
            //new IconButton(icon: new Icon(Icons.search),tooltip: 'Search',onPressed: (){Navigator.of(context).pushNamed("/Search");},),
            //new IconButton(icon: new Icon(Icons.settings),tooltip: 'Settings',onPressed: (){Navigator.of(context).pushNamed("/Settings");},),
            //new IconButton(icon: new Icon(Icons.refresh),tooltip: "Refresh",onPressed: (){Navigator.of(context).pushNamed("/Feed");}),
            //new IconButton(icon: new Icon(Icons.notifications),tooltip: "Refresh",onPressed: null),
           // new IconButton(icon: new Icon(Icons.close), tooltip:"Signout", onPressed: (){Navigator.of(context).pushNamed("/Signout");},)],))
//],))
    //)//)
    //;}
}
