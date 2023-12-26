import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_flutter_project/part2/navigator/screen/new_page.dart';

class NavigatorLayout extends StatelessWidget {
  const NavigatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: 'home',
            builder: (context, _) => const HomeWidget(),
          ),
          GoRoute(
              path: '/new',
              name: 'new',
              builder: (context, _) => const NewPage(),
              routes: []),
          GoRoute(
            path: '/new2',
            name: 'new2',
            builder: (context, _) => const NewPage2(),
          )
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () => context.pushNamed('new'),
        ),
      ),
    );
  }
}
