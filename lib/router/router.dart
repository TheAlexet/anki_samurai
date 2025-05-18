import 'package:anki_samurai/router/slide_transition.dart';
import 'package:anki_samurai/screens/main_screen.dart';
import 'package:anki_samurai/screens/dojo_screen.dart';
import 'package:anki_samurai/screens/class_screen.dart';
import 'package:anki_samurai/screens/home_screen.dart';
import 'package:anki_samurai/screens/decks_screen.dart';
import 'package:anki_samurai/screens/settings/general_settings_screen.dart';
import 'package:anki_samurai/screens/shop_screen.dart';
import 'package:anki_samurai/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppRoute {
  final String path;
  final String label;
  final IconData icon;
  final Widget screen;

  const AppRoute({
    required this.path,
    required this.label,
    required this.icon,
    required this.screen,
  });
}

final List<AppRoute> mainRoutes = [
  AppRoute(
    path: '/dojo',
    label: 'dojo',
    icon: Icons.sports_martial_arts,
    screen: const DojoScreen(),
  ),
  AppRoute(
    path: '/class',
    label: 'class',
    icon: Icons.class_,
    screen: const ClassScreen(),
  ),
  AppRoute(
    path: '/home',
    label: 'home',
    icon: Icons.home,
    screen: const HomeScreen(),
  ),
  AppRoute(
    path: '/decks',
    label: 'decks',
    icon: Icons.collections_bookmark,
    screen: const DecksScreen(),
  ),
  AppRoute(
    path: '/shop',
    label: 'shop',
    icon: Icons.store,
    screen: const ShopScreen(),
  ),
];

int getMainRouteIndex(String path) {
  return mainRoutes.indexWhere((r) => r.path == path);
}

final List<GoRoute> settingsRoutes = [
  GoRoute(
    path: '/settings',
    name: 'settings',
    pageBuilder: (context, state) => buildSlideTransitionPage(
      state: state,
      child: const SettingsScreen(),
    ),
    routes: [
      GoRoute(
        path: 'general',
        name: 'general_settings',
        pageBuilder: (context, state) => buildSlideTransitionPage(
          state: state,
          child: const GeneralSettingsScreen(),
        ),
      ),
    ],
  ),
];

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          for (final route in mainRoutes)
            GoRoute(
              path: route.path,
              name: route.label,
              pageBuilder: (context, state) => buildSlideTransitionPage(
                state: state,
                child: route.screen,
                indexResolver: getMainRouteIndex,
              ),
            ),
        ],
      ),
      ...settingsRoutes,
    ],
  );
});
