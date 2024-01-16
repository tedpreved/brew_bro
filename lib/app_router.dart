import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:test_exercise/presentation/screens/beer_details_screen.dart';
import 'package:test_exercise/presentation/screens/beer_list_screen.dart';

import 'core/model/beer_item.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext _, GoRouterState __) =>
            BeerListPage(title: "Fruit List"),
      ),
      GoRoute(
        path: '/details',
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            child: BeerDetailsScreen(
              key: state.pageKey,
              beerItem: state.extra as BeerItem,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
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
