import 'package:flutter/material.dart';
import 'package:stub004/lower_tabbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amberAccent,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                child: FractionallySizedBox(
                  heightFactor: 0.95,
                  widthFactor: 0.7,
                  child: InkWell(
                    onTap: () => print('pressed'),
                    child: Image.asset(
                      'assets/images/joshua-coleman-kFRKvJQtNHg-unsplash.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.center,
        ),
      ),
      bottomNavigationBar: const LowerTabBar(),
    );
  }
}
