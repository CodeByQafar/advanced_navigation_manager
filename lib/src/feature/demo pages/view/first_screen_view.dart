import 'package:flutter/material.dart';

import '../../../core/mixins/navigation_mixin.dart';

class FirstDemoScreenView extends StatelessWidget with NavigationMixinStateless {
  FirstDemoScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
          Navigator.of(context).pop();
        }),
        title: Text('First Screen'),
      ),
      body: Center(
        child: Text('Welcome to the First Demo Screen!'),
      ),
    );
  }
}