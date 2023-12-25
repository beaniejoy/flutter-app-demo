import 'package:flutter/material.dart';

class WidgetStackLayout extends StatelessWidget {
  const WidgetStackLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 겹겹히 쌓아 올리기'),
        ),
        body: StackBody(),
      ),
    );
  }
}

// Positioned: 정확하게 위치를 주고 싶을 때(right, left, bottom, top 숫자로 위치 부여가능
// Align: 정렬 기능을 이용해 위치를 조정할 수 있다.
class StackBody extends StatelessWidget {
  const StackBody({super.key});

  // stack은 children의 나중에 있는 것이 겉면에 있게 된다.
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //   width: 500,
        //   height: 500,
        //   color: Colors.black,
        // ),
        // Container(
        //   width: 400,
        //   height: 400,
        //   color: Colors.red,
        // ),
        // Container(
        //   width: 300,
        //   height: 300,
        //   color: Colors.blue,
        // ),
        // Align(
        //   alignment: Alignment(0.5, -0.5),
        //   child: Container(
        //     width: 200,
        //     height: 200,
        //     color: Colors.green,
        //   ),
        // ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(150),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(140),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Count 0',
            style: TextStyle(color: Colors.red, fontSize: 32),
          ),
        )
      ],
    );
  }
}
