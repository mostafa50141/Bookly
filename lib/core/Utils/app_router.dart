import 'package:flutter_application_1/Features/Home/presentation/views/home_view.dart';
import 'package:flutter_application_1/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // ignore: constant_identifier_names
  static const String KSplashView = '/';
  // ignore: constant_identifier_names
  static const String KHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: KHomeView, builder: (context, state) => const HomeView()),
    ],
  );
}
