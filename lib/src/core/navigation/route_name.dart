part of "navigation_manager.dart";

enum RouteName { home, firstDemoScreen, secondDemoScreen, thirdDemoScreenView }

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    String? name = settings.name;
    if (name == RouteName.home.withParaf) {
      return FadeRoute(child: HomeView(), settings: settings);
    } else if (name == RouteName.firstDemoScreen.withParaf) {
      return FadeRoute(child: FirstDemoScreenView(), settings: settings);
    } else if (name == RouteName.secondDemoScreen.withParaf) {
      return FadeRoute(child: SecondDemoScreenView(), settings: settings);
    } else if (name == RouteName.thirdDemoScreenView.withParaf) {
      return FadeRoute(child: ThirdDemoScreenView(), settings: settings);
    } else {
      return throw NavigationException("Route not found");
    }
  }
}

extension RouteNameExtension on RouteName {
  String get withParaf => "/$name";
}
