import 'package:anki_samurai/components/app_bar.dart';
import 'package:anki_samurai/components/navigation_bar.dart';
import 'package:anki_samurai/config/app_config.dart';
import 'package:anki_samurai/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    int currentIndex = mainRoutes.indexWhere((route) => location.startsWith(route.path));
    if (currentIndex == -1) currentIndex = 2;

    return Scaffold(
      appBar: CustomAppBar(
        title: AppConfig.appName,
      ),
      body: child,
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          final selected = mainRoutes[index];
          if (!location.startsWith(selected.path)) {
            context.go(
              selected.path,
              extra: mainRoutes[currentIndex].path,
            );
          }
        },
      ),
    );
  }
}
