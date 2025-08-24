import 'package:advanced_navigation_manager/src/core/navigation/navigation_manager.dart';
import 'package:flutter/material.dart';



///Two different mixins for [StatelessWidget] and [StatefulWidget] 

mixin NavigationMixinStateful<T extends StatefulWidget> on State<T> {
 NavigationManager get router => NavigationManager.instance;
}

mixin NavigationMixinStateless on StatelessWidget {
 NavigationManager get router => NavigationManager.instance;

}