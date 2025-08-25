import '../../../core/mixins/navigation_mixin.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/snackbar.dart';

class SecondDemoScreenView extends StatefulWidget  {
   SecondDemoScreenView({super.key});

  @override
  State<SecondDemoScreenView> createState() => _SecondDemoScreenViewState();
}

class _SecondDemoScreenViewState extends State<SecondDemoScreenView> with NavigationMixinStateful{
  final EdgeInsets widgetPaddings = const EdgeInsets.all(20);

  String message = '';


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null) {
      Future.delayed(const Duration(seconds: 1), () {
        SnackbarManager.showSnackBar(context, args.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        leading: BackButton(
          onPressed: () {
            // Return typed message to the previous page when back button is pressed
            router.popPage(result: "Message: $message");
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      
          Padding(
            padding: widgetPaddings,
            child: Text(
              'Welcome to the Second Demo Screen! Type something to send back to the previous page.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: widgetPaddings,
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Type something",
              ),
              onChanged: (String value) {
                message = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
