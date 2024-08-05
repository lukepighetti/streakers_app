import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/screens/home_screen.dart';
import 'package:streakers_app/screens/onboarding_screen.dart';
import 'package:streakers_app/sheets/create_streak_sheet.dart';

class NavigationService {
  final router = GoRouter(
    navigatorKey: di.navigatorKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
        redirect: (context, state) async {
          if (di.appViewModel.needsOnboarding) {
            return '/onboarding';
          } else {
            return '/home';
          }
        },
      ),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => OnboardingScreen(
          onSubmit: () => context.go('/'),
        ),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );

  Future<void> showOnboardingSheet() {
    return _showBottomSheet(OnboardingScreen(onSubmit: router.pop));
  }

  Future<void> showCreateStreak() {
    return _showBottomSheet(CreateStreakSheet());
  }
}

Future<T?> _showBottomSheet<T>(Widget child) {
  return showModalBottomSheet<T>(
    context: di.navigatorKey.currentContext!,
    builder: (_) => child,
    clipBehavior: Clip.antiAlias,
    scrollControlDisabledMaxHeightRatio: 0.85,
  );
}
