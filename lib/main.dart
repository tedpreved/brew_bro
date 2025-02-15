import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:test_exercise/constants.dart';

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
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightColorScheme;
        ColorScheme darkColorScheme;
        lightColorScheme = ColorScheme.fromSeed(
          seedColor: brandColor,
        );
        darkColorScheme = ColorScheme.fromSeed(
          seedColor: brandColor,
          brightness: Brightness.dark,
        );

        return MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'Flutter GoRouter Example',
          theme: ThemeData(
            colorScheme: lightColorScheme,
            // extensions: [lightCustomColors],
          ),
          darkTheme: ThemeData(
            colorScheme: darkColorScheme,
            // extensions: [darkCustomColors],
          ),
        );
      },
    );
  }
}
