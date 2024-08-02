import 'package:go_router/go_router.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/screens/home_screen.dart';
import 'package:streakers_app/screens/onboarding_screen.dart';

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
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
