import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'Json.dart';


class Feed extends StatefulWidget {
  @override
  _FeedState createState() => new _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new RefreshIndicator(
          child: new ListView.builder(itemBuilder: _itemBuilder),
          onRefresh: _onRefresh,
      ),
    );
  }

  Future<Null> _onRefresh() {
    Completer<Null> completer = new Completer<Null>();
    Timer timer = new Timer(new Duration(seconds:3), (){completer.complete();});
  return completer.future;
  }

  Widget _itemBuilder(BuildContext context, int index) {
      Json json= getJson(index);
      return new JsonWidget(json: json);
  }
}

Json getJson(int index) {
return new Json("Google","Hire You!");
}

class JsonWidget extends StatefulWidget {
  JsonWidget({ Key key, this.json }) : super(key: key);
  final Json json;

  @override
  _JsonWidgetState createState() => new _JsonWidgetState();
}

class _JsonWidgetState extends State<JsonWidget> {

  //({Key key, this.json}): super (key: key);
  @override
  Widget build(BuildContext context) {
    //return new Dismissible(
    /*child:*/ return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ( new ListTile(leading: new Icon(Icons.star, color: Colors.yellowAccent,),
            title: new Text("@Google"),
            subtitle: new Text('#dart #flutter #appdev #ft'),

          ) ),


        ],
      ),
    ); //key: key,);
  }
}


