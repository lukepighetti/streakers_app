import 'package:go_router/go_router.dart';
import 'package:streakers_app/di.dart';
import 'package:streakers_app/screens/home_screen.dart';

class NavigationService {
  final router = GoRouter(
    navigatorKey: di.navigatorKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
        // redirect: (context, state) async {
        //   return '/';
        // },
      ),
      // GoRoute(
      //   path: '/login',
      //   builder: (context, state) => HomeScreen(),
      // ),
      // GoRoute(
      //   path: '/streakers',
      //   builder: (context, state) => HomeScreen(),
      // ),
    ],
  );
}
