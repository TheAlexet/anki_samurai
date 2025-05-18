import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

typedef RouteIndexResolver = int Function(String path);

CustomTransitionPage<dynamic> buildSlideTransitionPage({
  required GoRouterState state,
  required Widget child,
  RouteIndexResolver? indexResolver,
}) {
  Offset beginOffset;

  if (indexResolver != null) {
    final currentPath = state.matchedLocation;
    final previousPath = state.extra is String ? state.extra as String : '';

    final currentIndex = indexResolver(currentPath);
    final previousIndex = indexResolver(previousPath);

    final bool forward = previousIndex < currentIndex;
    beginOffset = Offset(forward ? 1 : -1, 0);
  } else {
    beginOffset = const Offset(1, 0);
  }

  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final offsetAnimation = Tween<Offset>(
        begin: beginOffset,
        end: Offset.zero,
      ).animate(animation);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
