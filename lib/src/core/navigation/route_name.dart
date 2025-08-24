part of "navigation_manager.dart";

enum RouteName { home, firstDemoScreen, secondDemoScreen }

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    String? name = settings.name;
    if (name == RouteName.home.withParaf) {
      return MaterialPageRoute(builder: (context) => HomeView());
    } else if (name == RouteName.firstDemoScreen.withParaf) {
      return MaterialPageRoute(builder: (context) => FirstDemoScreenView());
    } else if (name == RouteName.secondDemoScreen.withParaf) {
      return MaterialPageRoute(builder: (context) => SecondDemoScreenView());
    } else {
      return throw NavigationException("Route not found");
    }
  }
}

extension RouteNameExtension on RouteName {
  String get withParaf => "/$name";
}
