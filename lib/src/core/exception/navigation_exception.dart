import 'package:flutter/material.dart';

///custom exception for [RouteGenerator] class
class NavigationException implements Exception{
  
  final String message;
  NavigationException(this.message);
  
  @override
  String toString() {
    return "NavigationException: $message";
  }
}