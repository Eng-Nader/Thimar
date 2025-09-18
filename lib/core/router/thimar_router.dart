import 'package:go_router/go_router.dart';
import 'package:thimar/auth/presentation/views/login_view.dart';

class ThimarRouter {
  static const String login = '/';
  final router = GoRouter(
    routes: [
      GoRoute(
        path: login,
        builder: (context, state) {
          return LoginView();
        },
      ),
    ],
  );
}
