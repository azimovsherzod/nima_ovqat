
import '../constans/imports.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

sealed class AppRoutes {
  AppRoutes._();
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return CupertinoPageRoute(builder: (context) => const OnBoardingPage());
      case Routes.home:
        return CupertinoPageRoute(builder: (context) => const HomePage());
      case Routes.recipesCard:
        return CupertinoPageRoute(builder: (context) => const RecipesCard());
      case Routes.splash:
        return CupertinoPageRoute(builder: (context) => const SplashPage());
      default:
        return null;
    }
  }
}
