import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './Feed.dart' as first;
import './Search.dart' as second;
import './Notifications.dart' as third;
import './Feedback.dart' as fourth;
import './Profile.dart' as fifth;
import './Settings.dart' as sixth;
import 'package:path/path.dart';
import 'dart:convert';
import 'package:flutter/services.dart';



final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = new GoogleSignIn();



Future<String> _testSignInWithGoogle() async {

  final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleAuth =
  await googleUser.authentication;
  final FirebaseUser user = await _auth.signInWithGoogle(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  assert(user.email != null);
  assert(user.displayName != null);
  assert(!user.isAnonymous);
  assert(await user.getToken() != null);

  //if ( user != null){
  //Widget build(BuildContext context){
  //return new Scaffold(
  //Navigator.of(context).pushNamed('feed'),)}
  print('$user');
      runApp(
      new MaterialApp(
        home: new Tabs(),
          routes: <String, WidgetBuilder>{
            "/Feed": (BuildContext context) => new first.Feed(),
            "/Settings": (BuildContext context) => new sixth.Settings(),
            "/Profile": (BuildContext context) => new fifth.Profile(),
            "/Search": (BuildContext context) => new second.Search(),
            //"/Signout":(BuildContext context) => new LogoutPage(),
            "/Notify": (BuildContext context) => new third.Notifications(),
            "/Feedback": (BuildContext context) => new fourth.Feedback(),
            "/Tabs": (BuildContext context) => new Tabs(),
          }
      ));

  //main();}
  // else {print ('error');};
  return 'signInWithGoogle succeeded: $user';
}


void main() {
  runApp(new MaterialApp(
      home: new LoginPage(),

      routes: <String, WidgetBuilder>{
        "/Feed": (BuildContext context) => new first.Feed(),
        "/Settings": (BuildContext context) => new sixth.Settings(),
        "/Profile": (BuildContext context) => new fifth.Profile(),
        "/Search": (BuildContext context) => new second.Search(),
        //"/Signout":(BuildContext context) => new LogoutPage(),
        "/Notify": (BuildContext context) => new third.Notifications(),
        "/Feedback": (BuildContext context) => new fourth.Feedback(),
        "/Tabs": (BuildContext context) => new Tabs(),
      }
  )
  );
}

void _signIn() {
  _testSignInWithGoogle();
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  //FirebaseAuth.instance.currentUser.email=null;

    return new Scaffold(

        appBar: new AppBar(
          title: new Text("Sign In"), centerTitle:true, backgroundColor: Colors.blue,),
        body: new Container(
            child: new Center(
                child:
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[new FloatingActionButton(
                      child: new Container(
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image:new DecorationImage(image: new NetworkImage("https://maxcdn.icons8.com/Share/icon/Logos//google_logo1600.png"),fit: BoxFit.cover,alignment: FractionalOffset.topCenter)
                        ),
                      ), onPressed: _signIn,)
                  ,
                    /*new IconButton(
                      icon: new Icon(Icons.account_box, color: Colors.red),
                      onPressed:  _signIn/*(){Navigator.of(context).pushNamed("/Tabs");}*/,
                      iconSize: 80.0,),
                    new Text("Google Signin")*/
                    ],
                )
            )
        )
    );
  }
}


/*void app() {
  new MaterialApp(

      title: "TalentDraw",
      home: new Tabs(),
      routes: <String, WidgetBuilder>{
        "/Feed": (BuildContext context) => new first.Feed(),
        // "/Settings":(BuildContext context) => new Settings(),
        "/Profile": (BuildContext context) => new fifth.Profile(),
        "/Search": (BuildContext context) => new second.Search(),
        //"/Signout":(BuildContext context) => new LogoutPage(),
        "/Notify": (BuildContext context) => new third.Notifications(),
        "/Feedback": (BuildContext context) => new fourth.Feedback(),
        "/Tabs": (BuildContext context) => new Tabs(),
      }

  );
}*/

class Tabs extends StatefulWidget {

  @override
  TabsState createState() => new TabsState();
}

Future <String> _signOut()  async{
    //FirebaseAuth.instance = new FirebaseAuth._();
    await FirebaseAuth.instance.signOut();
    await _googleSignIn.signOut();
  // instance = new FirebaseAuth();

  //FirebaseAuth.instance.signOut();
  //FirebaseUser user = FirebaseAuth.instance.currentUser;
  //print('$user');
  /*runApp( new MaterialApp(
    return new LoginPage()
  ));*/
   main();
  return "Signedout";

}


class TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController controller;


  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  //Drawer drawer = new Drawer();
  Widget build(BuildContext context) {
    void _profile() {
      Navigator.popAndPushNamed(context, "/Profile");
    }

    var userPhoto = new CircleAvatar( backgroundImage: new NetworkImage(FirebaseAuth.instance.currentUser.photoUrl,),  );
    var userEmail = new Text(
         FirebaseAuth.instance.currentUser.email,
        style: new TextStyle(color: Colors.white),);
    var userName = new Text(
        '@' + FirebaseAuth.instance.currentUser.displayName,
        style: new TextStyle(color: Colors.white),);
    var header = new UserAccountsDrawerHeader (accountName: userName  ,accountEmail:userEmail , currentAccountPicture: userPhoto,);

    //var signoutText = new Text('Signout', style: new TextStyle(color: Colors.blueAccent));
    //var signoutIcon = new Icon(Icons.clear);
    var signout = new ListTile(
      leading: const Icon(Icons.clear, color: Colors.lightBlueAccent,),
      title: const Text('Signout'),
      onTap: _signOut,);
    var profile = new ListTile(
        leading: const Icon(Icons.account_box, color: Colors.lightBlueAccent,),
        title: const Text('Profile'),
        onTap: _profile);
    var settings = new ListTile(
      leading: const Icon(Icons.settings, color: Colors.lightBlueAccent,),
      title: const Text('Settings'),
      onTap: () {
        Navigator.of(context).pushNamed("/Settiings");
      },);
   /* var login = new ListTile(
        leading: const Icon(Icons.accessibility, color: Colors.lightBlueAccent,),
        title: const Text('Login'),
        onTap: main);*/
    
    var starred = new ListTile(
        leading: const Icon(Icons.star, color: Colors.lightBlueAccent,),
        title: const Text('Starred'),
        onTap: /*(){Navigator.of(context).pushNamed("/Settings");}*/null);
    var children = [header, profile, starred, settings, signout, ];
    var listView = new ListView(children: children);
    var drawer = new Drawer(child: listView);
    return new Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("TalentDraw"), backgroundColor: Colors.blue,
        bottom: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab (icon: new Icon(Icons.business), text: 'Draw',),
              new Tab (icon: new Icon(Icons.search),text: 'Find',),
              new Tab (icon: new Icon(Icons.notifications_active), text: 'Alert',),
              new Tab (icon: new Icon(Icons.mail), text: 'Inbox'),
      //        new Tab (icon: new Icon(Icons.account_box), text: 'Me'),

            ]),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.Feed(),
          new second.Search(),
          new third.Notifications(),
          new fourth.Feedback(),
    //      new fifth.Profile(),
        ],
      ),
    );
  }
}



/*class Feed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Drawer drawer = new Drawer();
    return new Scaffold( drawer: drawer,
        appBar: new AppBar(/*title:new Text ('FEED')*/
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.face),tooltip: 'Profile',onPressed: (){Navigator.of(context).pushNamed("/Profile");},),
            new IconButton(icon: new Icon(Icons.search),tooltip: 'Search',onPressed: (){Navigator.of(context).pushNamed("/Search");},),
            new IconButton(icon: new Icon(Icons.settings),tooltip: 'Settings',onPressed: (){Navigator.of(context).pushNamed("/Settings");},),
            new IconButton(icon: new Icon(Icons.refresh),tooltip: "Refresh",onPressed: (){Navigator.of(context).pushNamed("/Feed");}),
            new IconButton(icon: new Icon(Icons.notifications),tooltip: "Refresh",onPressed: null),
            new IconButton(icon: new Icon(Icons.close), tooltip:"Signout", onPressed: (){Navigator.of(context).pushNamed("/Signout");},)],))

    ;}
}*/

/*class Settings extends StatelessWidget{
  @override
  Drawer drawer = new Drawer();
  Widget build(BuildContext context){
    return new Scaffold( drawer: drawer,
      appBar: new AppBar (title: new Text("Settings"), backgroundColor: Colors.blue,
        actions: <Widget>[new IconButton(icon: new Icon(Icons.face),tooltip: 'Profile',onPressed: (){Navigator.of(context).pushNamed("/Profile");},),
        new IconButton(icon: new Icon(Icons.search),tooltip: 'Search',onPressed: (){Navigator.of(context).pushNamed("/Search");},),
        new IconButton(icon: new Icon(Icons.cloud),tooltip: "Feed",onPressed: (){Navigator.of(context).pushNamed("/Feed");}),
        new IconButton(icon: new Icon(Icons.close), tooltip:"Signout", onPressed: (){Navigator.of(context).pushNamed("/Signout");},)], ),
    );
  }
}*/

/*class Profile extends StatelessWidget{
  @override
  Drawer drawer = new Drawer();
  Widget build(BuildContext context){
    return new Scaffold(drawer: drawer,
        appBar: new AppBar (title: new Text("Profile"), backgroundColor: Colors.blue,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search),tooltip: 'Search',onPressed: (){Navigator.of(context).pushNamed("/Search");},),
            new IconButton(icon: new Icon(Icons.settings),tooltip: 'Settings',onPressed: (){Navigator.of(context).pushNamed("/Settings");},),
            new IconButton(icon: new Icon(Icons.cloud),tooltip: "Feed",onPressed: (){Navigator.of(context).pushNamed("/Feed");}),
            new IconButton(icon: new Icon(Icons.close), tooltip:"Signout", onPressed: (){Navigator.of(context).pushNamed("/Signout");},)],));
  }
}*/

/*class Search extends StatelessWidget {
  //final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          //controller: _controller,
          decoration: new InputDecoration(
            hintText: 'Type something',
          ),
        ),
        new IconButton(icon: new Icon(Icons.home), onPressed: (){Navigator.of(context).pushNamed("/Feed");} ),
        new RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              child: new AlertDialog(
                title: new Text('You are searching for '),
                //content: new Text(_controller.text),
              ),
            );
          },
          child: new Text('Search'),
        ),
      ],
    );
  }
}*/

/*class Search extends StatelessWidget{
  @override
  Drawer drawer = new Drawer();
  Widget build(BuildContext context){
    return new Scaffold(drawer: drawer,
        appBar: new AppBar(title: new Text("TlaentDraw Login"), backgroundColor: Colors.blue,),
        body: new Container(
            child: new Center(
                child: new Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextField(
                      //controller: _controller,
                      decoration: new InputDecoration(
                        hintText: 'Type something',
                      ),
                    ),
                    new IconButton(icon: new Icon(Icons.home), onPressed: (){Navigator.of(context).pushNamed("/Feed");} ),
                    new RaisedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: new Text('Searching...'),
                            //content: new Text(_controller.text),
                          ),
                        );
                      },
                      child: new Text('Search'),
                    ),
                  ],
                ))));
  }
}*/

/*class LogoutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(title: new Text("Sign Out"), backgroundColor: Colors.blue,),
        body: new Container(
            child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new RaisedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          child: new AlertDialog(
                            title: new Text('You are signed out'),
                          ),
                        );
                      },
                      child: new Text('Sign out'),
                    ),
                    new Text("Are you sure you want to sign out?")
                  ],
                )
            )
        )
    );
  }
}*/
