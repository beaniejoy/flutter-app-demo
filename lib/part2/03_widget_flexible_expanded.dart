import 'package:flutter/material.dart';

class WidgetRatioLayout extends StatelessWidget {
  const WidgetRatioLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하로 배치하기'),
        ),
        body: Body(),
      ),
    );
  }
}

// Expanded (나머지 공간에 대해 height 상관없이 공간을 차지)
// Flexible (height에 영향을 받긴 함)
// SingleChildScrollView 에서는 Expanded, Flexible를 사용하면 에러발생 (height가 명시적으로 지정되지 않았기에)
// SingleChildScrollView 안에 Expanded, Flexible 사용하는 것만 주의하면 될 듯
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
  }
}
