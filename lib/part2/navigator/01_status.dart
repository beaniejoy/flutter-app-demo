import 'package:flutter/material.dart';

// status 변수로 페이지 이동 효과 나타내기

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeWidget());
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text('화면 이동하기(Navigator)'),
        ),
        backgroundColor: Colors.blue,
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
        currentIndex: index,
        onTap: (newValue) => setState(() => index = newValue),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return const Center(
          child: Icon(
            Icons.search,
            size: 100,
          ),
        );
      case 2:
        return const Center(
          child: Icon(
            Icons.person,
            size: 100,
          ),
        );
      case 0:
      default:
        return const Center(
          child: Icon(
            Icons.home,
            size: 100,
          ),
        );
    }
  }
}
