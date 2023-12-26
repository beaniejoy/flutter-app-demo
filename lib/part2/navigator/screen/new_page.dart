import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 화면 단위는 Scaffold
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to New Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: const Text('Go to Back'),
                onPressed: () => context.pop(),
              ),
              TextButton(
                child: const Text('Go to New Page2'),
                onPressed: () => context.pushNamed('new2'),
              ),
            ],
          ),
        ));
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to New Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Go to Back'),
            ),
            TextButton(
              onPressed: () => context.goNamed('home'),
              child: const Text('Go to Home'),
            )
          ],
        ),
      ),
    );
  }
}