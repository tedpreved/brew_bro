import 'package:flutter/material.dart';

import 'app_router.dart';
import 'injection.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Flutter GoRouter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
