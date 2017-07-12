import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  //Drawer drawer = new Drawer();
  Widget build(BuildContext context){
    //return new Scaffold(//drawer: drawer,
        //appBar: new AppBar(title: new Text("Search"), backgroundColor: Colors.blue,),
        return new Container(
            color: Colors.white,
            child: new Center(
                child: new Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextField(
                      //controller: _controller,
                      decoration: new InputDecoration(
                        hintText: 'Type something',
                      ),
                    ),

                    //new IconButton(icon: new Icon(Icons.home), onPressed: (){Navigator.of(context).pushNamed("/Feed");} ),
                    new RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: new Text('Searching...', style: new TextStyle(color: Colors.blue)),
                            //content: new Text(_controller.text),
                          ),
                        );
                      },
                      child: new Text('Search',
                      style: new TextStyle(color: Colors.white)),

                    ),
                  ],
                )));
  }
}
