import 'package:anki_samurai/models/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState(isDarkMode: false));

  void toggleDarkMode() => state = state.copyWith(isDarkMode: !state.isDarkMode);
}
