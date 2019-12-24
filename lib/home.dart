import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        body:
          new Container(
            child:
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
    
                  new Text(
                  "Spectacular Title",
                    style: new TextStyle(fontSize:27.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto"),
                  ),
    
                  new Image.asset(
                    'img/teapot.png',
                    fit:BoxFit.fitWidth,
                    )
                ]
    
              ),
    
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
          ),
    
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),
    
            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),
    
            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            ),
    
            new BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              title: new Text('Title'),
            )
          ]
    
        ),
      );
    }
}