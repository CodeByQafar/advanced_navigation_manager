import '../../../core/mixins/navigation_mixin.dart';
import 'package:flutter/material.dart';
import '../../../core/navigation/navigation_manager.dart';

class ThirdDemoScreenView extends StatelessWidget
    with NavigationMixinStateless {
  ThirdDemoScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home_filled),
        onPressed: () {
          router.replacePageTo(RouteName.home);
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Third Demo Screen!',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),

            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                'Previous page was removed from the stack and replaced with this screen. '
                'That means you cannot pop back,Try using the FloatingActionButton below '
                'to navigate back to the Home screen. ',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
