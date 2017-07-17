import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'Json.dart';


class Feed extends StatelessWidget{
/*  Feed({Key key}) : super (key: key);

  @override
  _FeedState createState() => new _FeedState();
}
  class _FeedState extends State<MyHomePage> {
  String _ipAddress = 'Unknown';

  //

  setState(() {
  _ipAddress = ip;
  });
  }*/


@override
  Widget build(BuildContext context) {
    return new Scaffold(
     /*   appBar: new AppBar(
        backgroundColor: new Color(0xFF26C6DA),
          centerTitle:true,
          title: new Text('Draw'),
    ),*/
    //Drawer drawer = new Drawer();
    body:
    new ListView(
      shrinkWrap: true,
      children: <Widget>[
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
                onLongPress: null,
              ),
    new ButtonTheme.bar( // make buttons use the appropriate styles for cards
    child: new ButtonBar(
    children: <Widget>[
      new FlatButton(
        child: new Text('NOT INTERESTED' ,style: new TextStyle(color: Colors.red) ,),
        onPressed: () { /* ... */ },
          //splashColor: Colors.red ,
      ),
    /*new FlatButton(
    child: const Text('FULL TIME'),color: Colors.white,
    onPressed: () { /* ... */ },
    splashColor: Colors.purpleAccent) ,*/

    new FlatButton(
    child: new Text('APPLY', ),
    onPressed: () { /* ... */ },
      //splashColor: Colors.green,
    ),
    new FlatButton(
    child: const Text('FEEDBACK'),
    onPressed: () { /* ... */ },

    ),
    ],
    ),

    )],
          ),

        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,
              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.star),
                title: const Text('@Google'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),
                onTap: null,

              ),

            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(leading: const Icon(Icons.star, color: Colors.yellowAccent),
                title: const Text('@AssessTalentManagement'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),),
            ],
          ),
        ),
        new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              const ListTile(leading: const Icon(Icons.star),
                title: const Text('@Apple'),
                subtitle: const Text(
                    '#dart #flutter #appdev #ft'),)
            ],
          ),
        )

      ],
    )
    );
  }
/*decoration: new BoxDecoration(color: Colors.white),
        child: new Center(
          child: new Text('Feed',
              style: new TextStyle(fontSize: 40.0, color: Colors.black87)),
        ),*/
//decoration: new BoxDecoration(color: Colors.0xFF26C6DA),
// margin: const EdgeInsets.symmetric(vertical: 10.0),
/*child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
             // margin: const EdgeInsets.only(right: 16.0),
              child: new CircleAvatar(child: new Image.asset('assets/googleicon.png', fit: BoxFit.fill),backgroundColor: Colors.white,),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text('Company', style: Theme.of(context).textTheme.subhead),
                new Container(
                  decoration: new BoxDecoration(/*color: Colors.grey,*/ border: new Border.all(color: Colors.0xFF26C6DA)) ,
                  margin: const EdgeInsets.only(top: 5.0),
                  child: new Text('We ARE HIRING!\n Apply now for the CEO position at Google\n We are glad to announce that you \n got scammed so hard that even hard itself \n became less harder.'/*'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'*/,softWrap: true,),
                ),
              ],
            ),
          ],
        ),
      );
    }*/

//};
}
class FeedScreen extends StatefulWidget {                     //modified
  @override                                                         //new
  State createState() => new FeedScreenState();                     //new
}

// Add the ChatScreenState class definition in main.dart.

class FeedScreenState extends State<FeedScreen> {//new
  _getPost() async{
  var httpClient = createHttpClient();
  Json json = new Json();
  //String source = json.getCard();
  var response = await httpClient.read(json.getSource());
  Map data = JSON.decode(response);
  String info = data['Origin'];
  if (!mounted) return;
  setState((){

  });
  //json.setCard();
  }
  final List<Feed> _messages = <Feed>[];             // new
  //final TextEditingController _textController = new TextEditingController();

  @override                                                         //new
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Draw")
      ),
    );
  }
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
//}
