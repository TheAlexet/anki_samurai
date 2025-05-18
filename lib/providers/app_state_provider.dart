import 'package:anki_samurai/models/app_state.dart';
import 'package:anki_samurai/notifiers/app_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>(
      (ref) => AppStateNotifier(),
);
