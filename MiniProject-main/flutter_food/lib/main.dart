import 'package:flutter/material.dart';
import 'package:flutter_food/acoount/main.dart';

import 'package:flutter_food/cart/main.dart';
import 'package:flutter_food/data/main.dart';
import 'package:flutter_food/explore/main.dart';
import 'package:flutter_food/home/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  dynamic routes = [
    Home(),
    Explore(),
    Cart(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food APP',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
            backgroundColor: Colors.grey.shade50,
            floatingActionButton: _index == 2
                ? FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        // _index = 4;
                      });
                    },
                    backgroundColor: Colors.deepPurpleAccent.shade200,
                    icon: Icon(Icons.attach_money),
                    label: Text('$total  Order now'),
                  )
                : Container(),
            body: routes[_index],
            // body: const PopularPage(),
            bottomNavigationBar: Nav()));
  }

  // void handleTap(int index) {
  //   setState(() {
  //     if (_index < 4 && _index != index) {
  //       _index = index;
  //     }
  //   });
  // }

  // BottomNavigationBar BottomNav() {
  //   return BottomNavigationBar(
  //     currentIndex: _index,
  //     onTap: handleTap,
  //     iconSize: 27,
  //     elevation: 10,
  //     showUnselectedLabels: false,
  //     showSelectedLabels: false,
  //     unselectedIconTheme: IconThemeData(color: Colors.black),
  //     selectedIconTheme: IconThemeData(color: Colors.deepPurpleAccent.shade700),
  //     items: const [
  //       BottomNavigationBarItem(
  //         icon: Icon(
  //           Icons.home_outlined,
  //         ),
  //         label: "Home",
  //       ),
  //       BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.explore_outlined,
  //           ),
  //           label: "Explore"),
  //       BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.shopping_cart_outlined,
  //           ),
  //           label: "Cart"),
  //       BottomNavigationBarItem(
  //           icon: Icon(
  //             Icons.account_circle_outlined,
  //           ),
  //           label: "Account"),
  //     ],
  //   );
  NavigationBarTheme Nav() {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.white.withAlpha(150),
      ),
      child: NavigationBar(
        backgroundColor: Colors.deepPurple.withAlpha(100),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: _index > 3 ? 2 : _index,
        onDestinationSelected: (int newindex) {
          setState(() {
            _index = newindex;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
            ),
            selectedIcon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          NavigationDestination(
              icon: Icon(
                Icons.explore_outlined,
              ),
              selectedIcon: Icon(
                Icons.explore,
              ),
              label: "Explore"),
          NavigationDestination(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              selectedIcon: Icon(
                Icons.shopping_cart,
              ),
              label: "Cart"),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
              ),
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: "Account")
        ],
      ),
    );
  }
}
