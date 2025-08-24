import '../../../core/mixins/navigation_mixin.dart';
import 'package:flutter/material.dart';


class SecondDemoScreenView extends StatelessWidget with NavigationMixinStateless {
  SecondDemoScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Second Demo Screen!'),
      ),
    );
  }
}