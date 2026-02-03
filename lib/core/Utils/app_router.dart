import 'package:flutter_application_1/Features/Home/presentation/views/book_details_view.dart';
import 'package:flutter_application_1/Features/Home/presentation/views/home_view.dart';
import 'package:flutter_application_1/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter_application_1/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // ignore: constant_identifier_names
  static const String KSplashView = '/';
  // ignore: constant_identifier_names
  static const String KHomeView = '/homeView';
  // ignore: constant_identifier_names
  static const String KBookDetailsView = '/bookDetailsView';
  // ignore: constant_identifier_names
  static const String KSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: KHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
