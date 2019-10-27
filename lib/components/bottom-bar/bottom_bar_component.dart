import 'package:flutter/material.dart';

BottomNavigationBar appBottomBar(BuildContext context, int selectedItem) {
  double iconSize = 30.0;
  return BottomNavigationBar(
    currentIndex: selectedItem,
    type: BottomNavigationBarType.fixed,
    onTap: (value) {
      navigateUser(value, context);
    },
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.table_chart, size: iconSize),
        title: Container(),
      ),
      BottomNavigationBarItem(
        icon: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/product_screens');
            },
            child: Icon(Icons.store_mall_directory, size: iconSize)),
        title: Container(),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.loop, size: iconSize),
        title: Container(),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.watch_later, size: iconSize), title: Container()),
      BottomNavigationBarItem(
        icon: Icon(Icons.more_horiz, size: iconSize),
        title: Container(),
      )
    ],
  );
}

void navigateUser(int index, context) {
  switch (index) {
    case 0:
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (BuildContext context) => ExploreScreen()),
      // );
      break;
  }
}
