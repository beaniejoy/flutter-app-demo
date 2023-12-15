import 'package:flutter/material.dart';

/*
* 여기서 핵심은 Row, Column 일 때 기준이 달라지는 속성들이 있음
* - mainAxisAlignment, crossAxisAlignment,  mainAxisSize, crossAxisSize
* */

// column 기준
class WidgetColumnLayout extends StatelessWidget {
  const WidgetColumnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하로 배치하기'),
        ),
        body: CustomColumnBody(),
      ),
    );
  }
}

class CustomColumnBody extends StatelessWidget {
  const CustomColumnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: double.infinity, // > MainAxisSize.max 이걸로 대체 가능
      color: Colors.grey,
      // Column을 Center로 wrapping해도 가운데 위치가 안된다.
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center, // vertical align
        crossAxisAlignment: CrossAxisAlignment.start, // horizontal align
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.red,
            child: Text('Container 1'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.green,
            child: Text('Container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.blue,
            child: Text('Container 3'),
          ),
        ],
      ),
    );
  }
}

// row 기준
class WidgetRowLayout extends StatelessWidget {
  const WidgetRowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 좌우로 배치하기'),
        ),
        body: CustomRowBody(),
      ),
    );
  }
}

class CustomRowBody extends StatelessWidget {
  const CustomRowBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.red,
            child: Text('Container 1'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.green,
            child: Text('Container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.blue,
            child: Text('Container 3'),
          ),
        ],
      ),
    );
  }
}

// row & column 기준
class WidgetColumnRowLayout extends StatelessWidget {
  const WidgetColumnRowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하좌우로 배치하기'),
        ),
        body: CustomColumnRowBody(),
      ),
    );
  }
}

class CustomColumnRowBody extends StatelessWidget {
  const CustomColumnRowBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Column, Row 각각에 대해 main, cross axis 축을 기억해야하고
    // 겉에 Container를 감쌌을 때의 align이 어떻게 바뀌는지도 중요
    return Container(
      width: double.infinity,
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize
                .min, // min으로 설정된 순간 해당 Row의 상위 Column의 cross align을 따르게 됨
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 80,
                color: Colors.red,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 80,
                color: Colors.green,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 80,
                color: Colors.blue,
                child: Text('Container 3'),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container 4'),
          )
        ],
      ),
    );
  }
}

// scroll 기준
class WidgetScrollLayout extends StatelessWidget {
  const WidgetScrollLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget scroll 적용'),
        ),
        body: CustomScrollBody(),
      ),
    );
  }
}

class CustomScrollBody extends StatelessWidget {
  const CustomScrollBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Row, Column 모두 가능
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal, // Row(좌우) 방향으로 스크롤
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}
