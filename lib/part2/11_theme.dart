import 'package:flutter/material.dart';

class ThemeLayout extends StatelessWidget {
  const ThemeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeWidget(),
      theme: customTheme,
    );
  }
}

// Theme 객체를 따로 변수화
final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  ),
  useMaterial3: true, // default
);

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    final textTheme = customTheme.textTheme;

    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Press Count',
            style: textTheme.bodyLarge,
          ),
          Text(
            '0',
            style: textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}
