import 'package:flutter/material.dart';

import 'package:toro_app/colors.dart';

class ToroElevatedButtonWidget extends StatelessWidget {
  final Color? color;
  final Widget child;
  final void Function()? onPressed;
  const ToroElevatedButtonWidget({
    Key? key,
    this.color = toroPrimaryColor,
    required this.child,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
      ),
    );
  }
}
