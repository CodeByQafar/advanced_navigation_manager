import 'package:advanced_navigation_manager/src/core/navigation/navigation_manager.dart';
import 'package:flutter/material.dart';
import '../../../core/mixins/navigation_mixin.dart';

class FirstDemoScreenView extends StatelessWidget
    with NavigationMixinStateless {
  FirstDemoScreenView({super.key});

  final EdgeInsets _bodyPadding = const EdgeInsets.all(30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            // Go back to the previous page without sending any data
            router.popPage();
          },
        ),
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Padding(
          padding: _bodyPadding,
          child: Text(
            'Welcome to the First Demo Screen! Just press the back button '
            'to return to the previous page without sending any message.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
