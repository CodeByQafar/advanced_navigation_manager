import '../../../core/mixins/navigation_mixin.dart';
import 'package:flutter/material.dart';

import '../../../core/navigation/navigation_manager.dart';
import '../../../core/components/snackbar.dart';
import '../widgets/custom_card_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with NavigationMixinStateful {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home View")),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomCardButton(
                  message: "Push to first demo page",
                  onPressed: () {
                    router.goToPage(RouteName.firstDemoScreen);
                  },
                ),
                CustomCardButton(
                  message:
                      "Push to second demo page and pass data between routes",
                  onPressed: () async {
                    /// We can send any type of data using the arguments property.
                    /// After [SecondDemoScreenView] pops, the page result will be
                    /// shown in a snackbar.
                    String result = await router.goToPage(
                      RouteName.secondDemoScreen,
                      arguments: 'This text data was sent from the home page',
                    );
                    SnackbarManager.showSnackBar(context, result);
                  },
                ),
              ],
            ),
            CustomCardButton(
              message: "Push to third demo page and replace current screen",
              onPressed: () {
                /// [replacePageTo] works like [popAndPushToPage]
                // router.replacePageTo(RouteName.thirdDemoScreenView);
                // When using `replacePageTo`, if you have a custom animation like
                // `FadeRoute`, the transition will be visible because the page is being replaced.
                // But with `popAndPushToPage`, the animation will not be visible, since the page
                // attaches instantly. This is a small but important difference to keep in mind when designing
                // navigation animations.
                router.popAndPushToPage(RouteName.thirdDemoScreenView);
              },
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
