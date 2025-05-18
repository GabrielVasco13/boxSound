import 'package:box_sound/views/home/home_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) {
        return const HomePage();
      },
    )
  ],
);
