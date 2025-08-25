
import 'package:flutter/material.dart';

class CustomCardButton extends StatelessWidget {
  CustomCardButton({super.key, required this.onPressed, required this.message});
  final EdgeInsets margin = EdgeInsets.all(10);
  final EdgeInsets padding = EdgeInsets.all(8);
  final VoidCallback onPressed;
  final String message;
  @override
  Widget build(BuildContext context) {
    final double buttonDimension = MediaQuery.of(context).size.width * 0.40;
   
   return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onPressed,
      child: Card(
        margin: margin,
        child: SizedBox.square(
          dimension: buttonDimension,
          child: Center(
            child: Padding(
              padding: padding,
              child: Text(message, textAlign: TextAlign.center),
            ),
          ),
        ),
      ),
    );
  }
}
