import 'package:box_sound/ui/views/welcome/welcome_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'welcome',
      builder: (context, state) {
        return const WelcomePage();
      },
    )
  ],
);
