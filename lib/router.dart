import 'package:go_router/go_router.dart';
import 'package:google_signin_flutter/controllers/login_controller.dart';
import 'package:google_signin_flutter/pages/home/home_page.dart';
import 'package:google_signin_flutter/pages/login/login_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    initialLocation: "/login",
    redirect: (context, state) {
      final account = ref.watch(loginControllerProvider).valueOrNull;
      if (account == null) {
        return "/login";
      } else {
        return "/home";
      }
    },
    routes: [
      GoRoute(path: "/login", builder: (context, state) => const LoginPage()),
      GoRoute(path: "/home", builder: (context, state) => const HomePage()),
    ],
  );
}
