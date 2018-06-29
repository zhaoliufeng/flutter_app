import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new ListView(scrollDirection: Axis.vertical, children: <Widget>[
          new MaterialButton(
            key: new Key("1"),
            color: Colors.blue,
            height: 45.0,
            minWidth: 200.0,
            onPressed: () {
              print('Press');
            },
            child: new Text(
              'Press',
              style: new TextStyle(color: Colors.white),
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.ac_unit),
            title: new Text('title'),
            subtitle: new Text('subtitle'),
            trailing: new Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            onTap: () {
              print('onTap');
            },
            onLongPress: () {
              print('onLongPress');
            },
          )
        ]),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.fast_rewind), title: new Text("rewind")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.face), title: new Text("face"))
        ]),
      ),
    );
  }
}
