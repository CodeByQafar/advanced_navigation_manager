import '../../../core/mixins/navigation_mixin.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with NavigationMixinStateful {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home View')),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  FittedBox(
                    child: Card(
                      child: SizedBox.square(
                        dimension: 150,
                        child: Center(child: Text("Push to Second demo page")),
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Card(
                      child: SizedBox.square(
                        dimension: 150,
                        child: Center(child: Text("Push to Second demo page")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  FittedBox(
                    child: Card(
                      child: SizedBox.square(
                        dimension: 150,
                        child: Center(child: Text("Push to Second demo page")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
