import 'package:go_router/go_router.dart';
import 'package:thimar/feature/auth/presentation/views/forgert_password_view.dart';
import 'package:thimar/feature/auth/presentation/views/login_view.dart';
import 'package:thimar/feature/auth/presentation/views/sing_up_view.dart';
import 'package:thimar/feature/auth/presentation/views/verfiy_otp_view.dart';

class ThimarRouter {
  static const String login = '/';
  static const String signUp = '/singup';
  static const String forgerPassword = '/forgetpass';
  static const String verfiyOtp = '/otp';
  final router = GoRouter(
    routes: [
      GoRoute(
        path: login,
        builder: (context, state) {
          return LoginView();
        },
      ),
      GoRoute(
        path: signUp,
        builder: (context, state) {
          return SingUpView();
        },
      ),
      GoRoute(
        path: forgerPassword,
        builder: (context, state) {
          return ForgertPasswordView();
        },
      ),
      GoRoute(
        path: verfiyOtp,
        builder: (context, state) {
          return VerfiyOtpView();
        },
      ),
    ],
  );
}
