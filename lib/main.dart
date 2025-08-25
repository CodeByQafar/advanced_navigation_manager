import 'package:advanced_navigation_manager/src/core/mixins/navigation_mixin.dart';
import 'package:advanced_navigation_manager/src/core/navigation/navigation_manager.dart';
import 'package:advanced_navigation_manager/src/core/theme/theme.dart';
import 'package:advanced_navigation_manager/src/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with NavigationMixinStateless {
   MyApp({super.key});
 
  /// We add the [NavigationMixinStateless] mixin to use the router.
  /// Prefer using the router over the [NavigationManager.instance]
  /// for a cleaner usage of the manager. Also add navigationGlobalKey
  /// to MaterialApp
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: router.navigationGlobalKey,
      title: "Advanced Navigation Manager",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: HomeView(),
    );
  }
}