import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amberAccent,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Spectacular Title',
                        style: TextStyle(
                            fontSize: 27.0,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  // fit:FlexFit.loose,
                  child: FractionallySizedBox(
                    heightFactor: 0.95,
                    widthFactor: 0.7,
                    child: InkWell(
                      onTap: () => print('pressed'),
                      // padding: const EdgeInsets.all(0.0),
                      child: Image.asset(
                        'assets/images/joshua-coleman-kFRKvJQtNHg-unsplash.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ]),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.center,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Colors.red),
          unselectedIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home) ,
              title: Text('Home'),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos),
              title: Text('Photos'),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('Widgets'),
            ),
          ]),
    );
  }
}
