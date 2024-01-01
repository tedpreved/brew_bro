import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_exercise/presentation/screens/fruit_details_screen.dart';
import 'package:test_exercise/presentation/screens/fruits_list_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext _, GoRouterState __) => const FruitsListPage(title: "Fruit List"),
      ),
      GoRoute(
        path: '/details',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            child: FruitDetailsScreen(
              key: state.pageKey,
              fruitItem: state.extra,
            ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      // Add more routes as needed
    ],
  );
}
