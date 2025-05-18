class AppState {
  final bool isDarkMode;

  AppState({required this.isDarkMode});

  AppState copyWith({bool? isDarkMode}) {
    return AppState(
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}