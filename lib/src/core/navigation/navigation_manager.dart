import '../../feature/demo pages/view/first_screen_view.dart';
import '../../feature/demo pages/view/second_screen_view.dart';
import '../../feature/demo pages/view/third_screen_view.dart';
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

  /// This class is a singleton for centralized access.
  /// The mixins [NavigationMixinStateful] and [NavigationMixinStateless]
  /// handle all navigation processes in a clean and consistent way.

  NavigationManager._();

  static NavigationManager instance = NavigationManager._();

  final GlobalKey<NavigatorState> _navigationGlobalKey =
      GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationGlobalKey => _navigationGlobalKey;

  /// Sometimes the app needs to transfer data between pages.
  /// This function allows sending optional arguments and also receiving data from the next page.
  @override
  Future<dynamic> goToPage(RouteName route, {Object? arguments}) async {
    return await _navigationGlobalKey.currentState?.pushNamed(
      route.withParaf,
      arguments: arguments,
    );
  }

  @override
  void popPage({Object? result}) {
    _navigationGlobalKey.currentState?.pop(result);
  }

  /// These two functions have similar purposes.
  /// [replacePageTo] removes the current page, so you cannot go back.
  /// It can send data via arguments but cannot return any data.

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
