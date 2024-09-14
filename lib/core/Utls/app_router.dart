import 'package:bookly_app/features/Home/data/presentaion/views/book_details_view.dart';
import 'package:bookly_app/features/Home/data/presentaion/views/home_view.dart';
import 'package:bookly_app/features/search/presentaion/search_view.dart';
import 'package:bookly_app/features/splash/presentation/view/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final Khomeview = '/homeView';
  static final Kbookdetailsview = '/bookdetailsview';
  static final Ksearchview = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Ksearchview,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: Khomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Kbookdetailsview,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
