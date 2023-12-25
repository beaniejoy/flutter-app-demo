import 'package:flutter/material.dart';

class ConstraintLayout extends StatelessWidget {
  const ConstraintLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ConstraintsWidget(),
        ),
      ),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.blue,
      child: Center(
        child: Container(
          // BoxContaints는 자식의 객체에 따라 다르게 적용(loose는 자식객체의 사이즈를, tight는 현재 설정된 Size)
          constraints: BoxConstraints.tight(Size(200, 200)),
          color: Colors.red,
          padding: const EdgeInsets.all(8),
          child: Container(
            margin: const EdgeInsets.all(20),
            width: 50,
            height: 50,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

// UnconstraintedBox도 존재
// OverflowBox: overflow가 발생해도 제한된 영역안에서만 잘 보여지도록 해준다.
// Expanded, Flexible을 사용해서 overflow되는 부분에 대해서 잘 처리할 수 있음
