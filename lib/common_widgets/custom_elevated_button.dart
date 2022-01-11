import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key key,
      this.child,
      this.color,
      this.borderRadius = 2.0,
      this.height = 50.0,
      this.onPressed,
      })
      : super(key: key);

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15.0),
      primary: color,
      onPrimary: Colors.black87,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
    );
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: style,
        onPressed: onPressed,
      ),
    );
  }
}
