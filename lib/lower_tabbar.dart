import 'package:flutter/material.dart';

class LowerTabBar extends StatelessWidget {
  const LowerTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Colors.red),
      unselectedIconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.green,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text('Favorites'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_to_photos),
          title: Text('Photos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Widgets'),
        ),
      ],
    );
  }
}
