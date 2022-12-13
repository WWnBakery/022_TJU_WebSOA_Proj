import 'package:flutter/material.dart';
import './tabs/HomePage.dart';
import './tabs/LivePage.dart';
import './tabs/Mine.dart';
import './tabs/MyTickets.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    LivePage(),
    MyTickets(),
    Mine()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test")),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              //重新build
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "首页",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
              icon: Icon(Icons.visibility),
              label: "现场",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: "票夹",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "我的",
            ),
          ]),
    );
  }
}
