part of 'navigation_manager.dart';


class FadeRoute<T> extends PageRouteBuilder<T> {
  final Widget child;

  FadeRoute({required this.child, RouteSettings? settings})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation, 
            child: child,
          );
        },
         settings: settings,
      );
}