import '../../feature/demo pages/view/first_screen_view.dart';
import '../../feature/demo pages/view/second_screen_view.dart';
import '../../feature/home/view/home_view.dart';
import '../exception/navigation_exception.dart';
import 'package:flutter/material.dart';
part "navigation_animation.dart";
part 'route_name.dart';

abstract class INavigationManager {

  Future<dynamic> goToPage(RouteName route, {Object? arguments});
  void popPage({Object? result});
  Future<void> replacePageTo(RouteName route, {Object? arguments});
  Future<void> popAndPushToPage(RouteName route, {Object? arguments});

}

class NavigationManager implements INavigationManager {

  /// We've made this class a singleton for centralized access.
  /// The mixins [NavigationMixinStateful] and [NavigationMixinStateless]
  /// are used to handle all navigation processes in a cleaner way.

  NavigationManager._();

  static  NavigationManager instance = NavigationManager._();

  final GlobalKey<NavigatorState> _navigationGlobalKey =
      GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationGlobalKey => _navigationGlobalKey;

  @override
  Future<dynamic> goToPage(RouteName route, {Object? arguments}) async {
    await _navigationGlobalKey.currentState?.pushNamed(
      route.withParaf,
      arguments: arguments,
    );
  }

  @override
  void popPage({Object? result}) {
    _navigationGlobalKey.currentState?.pop(result);
  }

  @override
  Future<void> replacePageTo(RouteName route, {Object? arguments}) async {
    await _navigationGlobalKey.currentState?.pushReplacementNamed(
      route.withParaf,
      arguments: arguments,
    );
  }

  @override
  Future<void> popAndPushToPage(RouteName route, {Object? arguments}) async {
    await _navigationGlobalKey.currentState?.popAndPushNamed(
      route.withParaf,
      arguments: arguments,
    );
  }
}
